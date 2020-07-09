<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/8
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="oss.GoodsSingle" %>
<%!
    static ArrayList goodslist = new ArrayList();
    static {
        String[] names = {"小米10pro", "华为P40pro", "苹果11pro", "一加8pro"};
        int[] prices = {4999, 5998, 8999, 5499};
        for (int i = 0; i < 4; i++) {
            GoodsSingle single = new GoodsSingle();
            single.setName(names[i]);
            single.setPrice(prices[i]);
            single.setNum(1);
            goodslist.add(i, single);
        }
    }
%>
<%
    session.setAttribute("goodslist", goodslist);
    response.sendRedirect("show.jsp");
%>