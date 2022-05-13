<%@page import="shopDAO.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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
	<!-- 나는 SawonDeleteProcess.jsp -->
	<%
	request.setCharacterEncoding("UTF-8");
	ShopDAO sDao = new ShopDAO();
	
	String delId = request.getParameter("id");
	boolean b1 = sDao.delete(delId);
	
	if(b1){
		session.invalidate();
		response.sendRedirect("index.jsp");
	
	}else { %>
	<a onclick="history.back()" style="cursor: pointer">에러 - 삭제화면으로</a>
	<% } %>


</body>
</html>