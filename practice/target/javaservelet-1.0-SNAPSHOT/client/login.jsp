<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 12/22/2021
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="/login" method="post">
    <div>
        Username <input type="text" name="username">
    </div>
    <div>
        Password <input type="password" name="password">
    </div>
    <div>
        <input type="submit" value="login">
    </div>
</form>
</body>
</html>
