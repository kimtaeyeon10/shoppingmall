<%@page import="shopProductsVO.ShopProductsVO"%>
<%@page import="shopDAO.ShopDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<style>
	.container{width:100%;height:calc(100vh - 110px);font-family: "Noto Sans KR";display: flex;justify-content: center;justify-items: center;align-items: center;}
	.allproducts{display: flex;flex-wrap: wrap;width:1260px;margin:0 auto;}
	.allproducts > div {width: 25%;}
	
</style>
</head>
<body>

	<%@ include file="header.jsp"%>

	<div class=container>
		<div class="allproducts" align="center">
			<form action="reSearch.jsp" method="get">
				<input type="text" placeholder="상품을 검색하세요!" name="keyword" >
				<input type="submit" value="검색">
			</form>
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>

</body>
</html>