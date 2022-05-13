<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="shopDAO.ShopDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>배짱장사</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap"
	rel="stylesheet">

<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/common.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<% 
	request.setCharacterEncoding("UTF-8");
	ShopDAO sDAO = new ShopDAO();
	
	String pcode = request.getParameter("pcode");
	//String psize = request.getParameter("psize");
	String panme = request.getParameter("panme");
	int pcount = Integer.parseInt(request.getParameter("pcount"));
	int pprice = Integer.parseInt(request.getParameter("pprice"));
	String ptext = request.getParameter("ptext");
	String pimg = request.getParameter("pimg");
	
	sDAO.registerProd( pcode+"d",  "",  panme,  pcount,  pprice,  ptext,
			 pimg);
	sDAO.registerProd( pcode+"S",  "S",  panme,  pcount,  pprice,  ptext,
			 pimg); 
	sDAO.registerProd( pcode+"M",  "M",  panme,  pcount,  pprice,  ptext,
			 pimg); 
	sDAO.registerProd( pcode+"L",  "L",  panme,  pcount,  pprice,  ptext,
			 pimg); 
	response.sendRedirect("index2.jsp");
	%>
	
	

	<%@ include file="footer.jsp"%>
</body>
</html>