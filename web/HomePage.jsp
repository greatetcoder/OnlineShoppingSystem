<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/8
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>网上购物系统</title>
  <style>
    body{
      text-align: center;
      background-color:lightblue;
    }
    input[type=button]{
      width: 90px;
      height: 25px;
      background-color: #000;
      border: 1px solid #2e6da4;
      border-radius:5px;
      color: #fff;
      font-size: 100%;
    }
    table{
      width:380px;
    }
    input[type=button]:hover {
      animation: rabow;
      animation-duration: 0.1s;
      animation-fill-mode: forwards;
    }
    @keyframes res{
      100% {
        background-color:#eee;
        transform: scale(1.01);
      }
    }
    @keyframes rabow {
      100% {
        background-color:#2a6496;
        transform: scale(1.01);
      }
  </style>
</head>
<body>
<h1>网上购物系统</h1>
<hr>
<a href="Register.jsp"><input type="button"class="btn btn-primary" value="注册"></a>
<a href="Login.jsp"><input type="button"class="btn btn-primary" value="登录"></a>
</body>
</html>
