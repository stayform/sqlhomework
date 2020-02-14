<%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/11
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>
<form action="/check" method="get">
    ID:<input type="text" name="id"><br>
    用户名:<input type="text" name="username" ><br>
    密码:<input type="password" name="pwd" ><br>
    邮箱:<input type="text" name="mail"><br>
    <input type="submit" value="登陆">
</form>
</body>
</html>
