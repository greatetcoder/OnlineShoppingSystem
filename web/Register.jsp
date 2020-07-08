<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/8
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <style>
        body{
            text-align: center;
        }
    </style>
    <script>
        var a = '${sessionScope.wrongPassword}';
        if(a=='yes'){
            alert("两次输入密码不同，请重新输入！");
        }
    </script>
</head>
<body>
<h1>注册</h1>
<form action="Login.jsp" method="post">
    用户名：<input type="text" name="username" required><br>
    密码：<input type="password" name="password" required><br>
    确认密码：<input type="password" name="confirm-password" required><br>
    <input type="submit">
    <input type="reset">
</form>
</body>
</html>