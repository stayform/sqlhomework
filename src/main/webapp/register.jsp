<%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/22
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<form action="/registerServlet" method="get">
    ID:<input type="text" name="id">
    用户名：<input name="username" type="text">
    密码：<input type="password" name="pwd">
    邮箱：<input type="text" name="mail">
    <input type="submit" value="提交">
</form>
</body>
</html>
