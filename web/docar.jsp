<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/9
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="oss.MyTools" %>
<%@ page import="oss.GoodsSingle" %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="myCar" class="oss.ShopCar" scope="session"/>
<%
    String action = request.getParameter("action");
    if (action == null)
        action = "";
    if (action.equals("buy")) {
        ArrayList goodslist = (ArrayList) session.getAttribute("goodslist");
        int id = MyTools.strToint(request.getParameter("id"));
        GoodsSingle single = (GoodsSingle) goodslist.get(id);
        myCar.addItem(single);
        response.sendRedirect("show.jsp");
    } else if (action.equals("remove")) {
        String name = request.getParameter("name");
        myCar.removeItem(name);
        response.sendRedirect("shoppingcar.jsp");
    } else if (action.equals("clear")) {
        myCar.clearCar();
        response.sendRedirect("shoppingcar.jsp");
    } else {
        response.sendRedirect("show.jsp");
    }
%>