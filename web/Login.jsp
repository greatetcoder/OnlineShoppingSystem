<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/8
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <style>
        body{
            text-align: center;
        }
    </style>
</head>
<body>
<h1>登录</h1>
<form action="login" method="post">
    用户名：<input type="text" name="username"><br>
    密码：<input type="password" name="password"><br>
    <input type="submit">
</form>
</body>
</html>