<%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/23
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,java.sql.*" %>
<%@ page import="dao.UserDao" %>
<%@ page import="beans.User" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>展示所有用户</title>
</head>
<body>
<%
    UserDao userDao = new UserDao();
    ArrayList users = userDao.queryAllUsers();
%>
<table border="2">
    <tr>
        <td>id</td>
        <td>username</td>
        <td>pwd</td>
        <td>mail</td>
    </tr>
    <%
        for(int i = 0;i<users.size();i++){
            User user = (User)users.get(i);
            String id = user.getId();
            String username = user.getUsername();
            String pwd = user.getPwd();
            String mail = user.getMail();
            %>
    <tr>
        <td><%=id%></td>
        <td><%=username%></td>
        <td><%=pwd%></td>
        <td><%=mail%></td>
    </tr>
    <%
        }

    %>


</table>
</body>
</html>
