<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/11
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>核验页面</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GuestBook","root","SUJR20051106.");

        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        String mail = request.getParameter("mail");
        System.out.println(id+username);

        String sql = "select * from User2";
        PreparedStatement stat = conn.prepareStatement(sql);
        ResultSet rs = stat.executeQuery();
        while(rs.next()){
            String did = rs.getString(1);
            String dusername = rs.getString(2);
            String dpwd = rs.getString(3);
            String dmail = rs.getString(4);
            if(did.equals(id)&&dusername.equals(username)&&dpwd.equals(pwd)&&dmail.equals(mail)){
                response.sendRedirect("/writerMessage.jsp");
                break;
            }
        }
        response.sendRedirect("/fail.jsp");
    } catch (Exception e) {
        e.printStackTrace();
    }

%>
</body>
</html>
