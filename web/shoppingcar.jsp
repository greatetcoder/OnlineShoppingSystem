<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/8
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="oss.GoodsSingle"%>
<html>
<center>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>购物车清单</title>
</head>
<body style="background-color:lightblue;">
<jsp:useBean id="myCar" class="oss.ShopCar" scope="session"></jsp:useBean>
<%
    ArrayList<GoodsSingle> buylist = myCar.getBuylist();
    float total = 0;
%>
<table   width="500" border="0">
    <tr height="50">
        <td colspan="5" align="center"style="background-color:#FFA500;">购物车清单：</td>
    </tr>
    <tr align="center" height="30" style="background-color:#eeeeee">
        <td width="25%">名称</td>
        <td>价格（元）</td>
        <td>数量</td>
        <td>总价（元）</td>
        <td>删除</td>
    </tr>
    <%
        if (buylist == null || buylist.size() == 0) {
    %>
    <tr height="100">
        <td colspan="5" align="center">空空如也！</td>
    </tr>
    <%
    } else {
        for (int i = 0; i < buylist.size(); i++) {
            GoodsSingle single = (GoodsSingle) buylist.get(i);
            String name = single.getName();
            float price = single.getPrice();
            int num = single.getNum();
            float money = ((int) ((price * num + 0.05f) * 10)) / 10f;
            total += money;
    %>
    <tr height="50" align="center">
        <td><%=name%></td>
        <td><%=price%></td>
        <td><%=num%></td>
        <td><%=money%></td>
        <td  align="center" colspan="1"  style="background-color:#eeeeee"><a href="docar.jsp?action=remove&name=<%=name%>">删除</a></td>
    </tr>
    <%
            }
        }
    %>
    <tr height="50" align="center">
        <td colspan="5"align="center" style="background-color:#7fffd4">应付金额：<%=total%></td>
    </tr>
    <tr>
        <td colspan="2" align="center" style="background-color:#00ffff"><a href="show.jsp">继续购买</a></td>
        <td colspan="3" align="center" style="background-color:#6495ed"><a href="docar.jsp?action=clear">清空购物车</a></td>
    </tr>
</table>
</body>
</center>
</html>
