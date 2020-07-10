<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="oss.GoodsSingle"%>
<html>
<center>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>购物车</title>
</head>
<body style="background-color:lightblue;">
<%
    ArrayList<GoodsSingle> goodslist =(ArrayList<GoodsSingle>)session.getAttribute("goodslist");
%>
<table  width="500" border="0">
    <tr height="50">
        <td colspan="3" align="center"style="background-color:#FFA500;">商品清单：</td>
    </tr>
    <tr align="center" height="30" style="background-color:#eeeeee">
        <td>名称</td>
        <td>价格</td>
        <td>购买</td>
    </tr>
    <%
        if (goodslist == null || goodslist.size() == 0) {
    %>
    <tr height="100">
        <td colspan="3" align="center">你还没有买东西哦！</td>
    </tr>
    <%
    } else {
        for (int i = 0; i < goodslist.size(); i++) {
            GoodsSingle single = (GoodsSingle) goodslist.get(i);
    %>
    <tr height="50" align="center">
        <td><%=single.getName()%></td>
        <td><%=single.getPrice()%></td>
        <td align="center" colspan="1"  style="background-color:#eeeeee"><a href="docar.jsp?action=buy&id=<%=i%>">购买</a></td>
    </tr>
    <%
            }
        }
    %>
    <tr height="50">
        <td align="center" colspan="3"  style="background-color:#eeeeee"><a href="shoppingcar.jsp">查看购物车</a></td>
    </tr>
</table>
</body>
</center>
</html>