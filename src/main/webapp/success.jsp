<%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/11
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆成功页面</title>
</head>
<body>
登陆成功
<%
    request.getSession().setAttribute("username",request.getParameter("username"));
%>
<%=request.getSession().getAttribute("username")%>
<a href="logincheck.jsp">查看所有留言</a>
</body>
</html>
