<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/25
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看所有留言</title>
</head>
<body>
<table border="1">
    <tr>
        <td>id</td>
        <td>message</td>
    </tr>
<%

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/GuestBook?useSSL=true", "root", "SUJR20051106.");
        String sql = "select * from messagerepo";
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            String id = rs.getString(1);
            String message = rs.getString(2);
          %>
    <tr>
        <td><%=id%></td>
        <td><%=message%></td>
    </tr>
    <%
        }
    }catch(Exception e){
        e.printStackTrace();
    }


   Integer count = (Integer)application.getAttribute("count");
    if(count==null||count==0){
        count=1;
    }else{
        count+=1;
    }
    application.setAttribute("count",count);
%>
    访问量<%=count%>


</body>
</html>
