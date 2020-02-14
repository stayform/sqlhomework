<%@ page import="java.sql.*" %>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
    <title>连接数据库</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GuestBook", "root", "SUJR20051106.");
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String pwd = request.getParameter("pwd");
        String mail = request.getParameter("mail");

        String sql ="insert into user2"+" values(?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,id);
        ps.setString(2,username);
        ps.setString(3,pwd);
        ps.setString(4,mail);
        int i = ps.executeUpdate();

        %>

        response.out.println("成功添加"+<%=i%>+"行");
<%
        ps.close();
        conn.close();
    }catch (Exception e){
        e.printStackTrace();
    }
    response.sendRedirect("/login.jsp");
%>
</body>
</html>
