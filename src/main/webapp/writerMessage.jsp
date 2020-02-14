<%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/25
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>写留言</title>
</head>
<body>
<form action="/saveMessage.jsp" method="get">
    ID:<input type="text" name="id"><br>
    写留言:<input type="text" name="message" size="70"><br>
    <input type="submit" value="提交">
    <a href="logincheck.jsp">查看所有留言</a>
</form>
</body>
</html>
