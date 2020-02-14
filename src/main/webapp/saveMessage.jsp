<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/25
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>保存留言</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GuestBook?useSSL=true", "root", "SUJR20051106.");
        String id = request.getParameter("id");
        String message = request.getParameter("message");

        String sql ="insert into messagerepo"+" values(?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,id);
        ps.setString(2,message);
        int i = ps.executeUpdate();

%>

       out.println("成功添加"+<%=i%>+"行");
<%
        ps.close();
        conn.close();
    }catch (Exception e){
        e.printStackTrace();
    }
%>
</body>
</html>
