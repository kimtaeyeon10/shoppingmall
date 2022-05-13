<%@page import="shopCartsVO.ShopCartJoinVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shopDAO.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배짱장사</title>
</head>
<body><!-- cartList2.jsp -->
   <%
   String uid = (String)session.getAttribute("user_id");
  	//int num = Integer.parseInt((String)request.getAttribute("num"));
   	//int num = (int)request.getAttribute("num");
   	int num = Integer.parseInt((String)request.getParameter("num"));
	ShopDAO sdao = new ShopDAO();
	sdao.cartDel(num , uid);
	response.sendRedirect("cartList2.jsp");
	//response.sendRedirect("index.jsp");
   %>
</body>
</html>