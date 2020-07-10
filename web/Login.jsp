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
            background-color:lightblue;
        }
        input[type=text]{
            width:100%;
            height:15%;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius:10px;
            text-align: right;
            font-size: 100%;
        }
        input[type=password]{
            width:100%;
            height:15%;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius:10px;
            text-align: left;
            font-size: 100%;
        }
        input[type=submit]{
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
        input[type=text]:hover{

            animation: res;
            animation-duration: 0.1s;
            animation-fill-mode: forwards;
        }

        input[type=password]:hover{

            animation: res;
            animation-duration: 0.1s;
            animation-fill-mode: forwards;
        }
        input[type=submit]:hover {
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
<h1>登录</h1>
<center>
    <form action="shoplist.jsp" method="post">
        <table cellpadding="5px" style="marin:10px">
            <tdoby>
                <tr>
                    <td>
                        用户名：
                    </td>
                    <td>
                        <input type="text" name="username">
                    </td>
                </tr>
                <tr>
                    <td>
                        密码：
                    </td>
                    <td>
                        <input type="password" name="password">
                    </td>
                </tr>
            </tdoby>
        </table>
        <input type="submit" class="btn btn-primary" value="提交">
    </form>
</center>
</body>
</html>