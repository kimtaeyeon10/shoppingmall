<%@page import="shopProductsVO.ShopProductsVO"%>
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
		*{box-sizing: border-box;}
		#wrap{width:100%;font-family: "Noto Sans KR";height:100%;padding:50px 0;}
		#wrap #main{width:100%;height:100%;}
		#wrap #main .main_in{width:1240px;height: 100%;margin:0 auto;}
		#wrap #main .main_in h2{font-size:32px;margin:24px 0;font-weight: bold;text-align: center;margin-bottom:60px;}
		#wrap #main .main_in .container{}
		#wrap #main .main_in .container .allproducts{display:flex;flex-wrap: wrap;}
		#wrap #main .main_in .container .allproducts .product{width:25%;margin-top:30px;}
		#wrap #main .main_in .container .allproducts .product:first-child{margin-top:0px;}
		#wrap #main .main_in .container .allproducts .product:nth-child(2){margin-top:0px;}
		#wrap #main .main_in .container .allproducts .product:nth-child(3){margin-top:0px;}
		#wrap #main .main_in .container .allproducts .product:nth-child(4){margin-top:0px;}
		#wrap #main .main_in .container .allproducts .product a{display:block;}
		#wrap #main .main_in .container .allproducts .product a img{display:block;width:180px;margin:0 auto;height:180px;}
		#wrap #main .main_in .container .allproducts .product h3{text-align: center;font-size:18px;font-weight: bold;padding: 5px;}
		#wrap #main .main_in .container .allproducts .product p{text-align: center;font-size:18px;font0weight:bold;padding: 5px;}
		
		.payBtn{}
		.payBtn input{padding:10px 20px;margin-top:40px;}
	
		#footer{}
	</style>
</head>

<body>
	<!-- cartList2.jsp -->
	<%@ include file="header.jsp"%>

	<%
		ShopDAO shopdao = new ShopDAO();
		ArrayList <ShopProductsVO> listProducts = shopdao.getAllMSProducts();
	%>
	<div id="wrap">
		<section id="main">
			<div class="main_in">
				<h2>남자 상의 상품 목록</h2>
				<div class=container>
					<div class="allproducts">
						<%
						for(int i = 0; i < listProducts.size(); i++){
							ShopProductsVO product = listProducts.get(i);
						%>
						<div class="product">
							<a href="showDetailProduct2.jsp?id=<%=product.getPanme()%>">
							<img src="img/<%=product.getPimg() %>"></a>
							<h3><%=product.getPanme() %></h3>
							<p><%=product.getPprice() %>원
						</div>
						<%
							}
						%>
					</div>
				</div>
		</section>
	</div>

	<%@ include file="footer.jsp"%>

</body>

</html>