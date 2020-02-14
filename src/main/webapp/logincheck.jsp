<%--
  Created by IntelliJ IDEA.
  User: 联想
  Date: 2019/11/25
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>验证是否登陆</title>
</head>
<body>
<%
    String username =(String)request.getSession().getAttribute("username");
    if((username==null)||username.equals("")){
        response.sendRedirect("/login.jsp");
    }else{
        response.sendRedirect("/showMessages.jsp");
    }
%>
</body>
</html>
