<%@page import="shopProductsVO.ShopProductsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shopDAO.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%@ include file="header.jsp"%> --%>
	<% 	
	request.setCharacterEncoding("UTF-8");	
	ShopDAO shopdao = new ShopDAO();
	String uid = (String)session.getAttribute("user_id");
	String size = request.getParameter("size");
	//String size = "S";
	String pcode = "asd";
	String pname = (String)request.getParameter("hpname");
	
	
	ArrayList <ShopProductsVO> listProducts = shopdao.find_pcode(size, pname);
	for(int i = 0; i < listProducts.size(); i++){
		ShopProductsVO product = listProducts.get(i);
		pcode = product.getPcode();
	}
	
	
	boolean b1 = shopdao.cart_in(uid, pcode, pname);
	if(b1){
			response.sendRedirect("cartList2.jsp");
		}else{%>
			alert("에러발생!");
		<%}
	%>
	
	

	
	
	
</body>
</html>