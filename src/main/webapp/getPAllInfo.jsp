<%@page import="shopSalesVO.ShopSalesVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shopDAO.ShopDAO"%>
<%@page import="shopProductsVO.ShopProductsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

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
<style>
	*{box-sizing: border-box;}

	#wrap{width:100%;height:calc(100vh - 110px);font-family: "Noto Sans KR";}
	#wrap #main{width:100%;height:100%;}
	#wrap #main .main_in{width:100%;height:100%;display: flex;}
	#wrap #main .main_in .menu{width:250px;height:100%;}
	#wrap #main .main_in .menu h2{width: 100%;margin:50px 0;}
	#wrap #main .main_in .menu h2 a{display: block;width:100%;text-align: center;color:#000;font-size:30px;font-weight: bold;}

	#wrap #main .main_in .menu nav{width:100%;text-align: center;}
	#wrap #main .main_in .menu nav ul{width:150px;margin:0 auto;}
	#wrap #main .main_in .menu nav ul li{background: #939393;margin-bottom:15px;border-radius: 10px;}
	#wrap #main .main_in .menu nav ul li a{display: block;color:#fff;padding:15px;font-size:20px;font-weight: bold;}

	#wrap #main .main_in .print{width:calc(100% - 250px);height:100%;}
	#wrap #main .main_in .print .print_in{height:100%;padding: 0 50px;}
	#wrap #main .main_in .print .print_in .top{padding:30px 0px;height:95px;}
	#wrap #main .main_in .print .print_in .top .top_in{}
	#wrap #main .main_in .print .print_in .top .top_in form{}
	#wrap #main .main_in .print .print_in .top .top_in form input{padding:8px;outline: none;}

/* 	#wrap #main .main_in .print .print_in .bottom{border:1px solid red;height:100%;height:calc(100% - 95px);}
	#wrap #main .main_in .print .print_in .bottom .bottom_in{display: flex;flex-wrap: wrap;justify-items: center;align-items: center;height:100%;width:100%;}
	#wrap #main .main_in .print .print_in .bottom .bottom_in > div{background: #e4e4e4;width:25%;margin:4%;height:150px;} */
	*{box-sizing: border-box;}
	#wrap{width:100%;font-family: "Noto Sans KR";height:100%;padding:50px 0;}
	#wrap #main{width:100%;height:100%;}
	#wrap #main .main_in{width:1240px;height: 100%;margin:0 auto;}
	#wrap #main .main_in h2{font-size:32px;margin:24px 0;font-weight: bold;}
	#wrap #main .main_in .form{}
	#wrap #main .main_in .form table{width:100%;border-collapse:collapse;}
	#wrap #main .main_in .form table tr{}
	#wrap #main .main_in .form table tr td{vertical-align: middle;text-align: center;border:1px solid #e3e3e3;padding:20px;border-collapse:collapse;}
	
	.payBtn{}
	.payBtn input{padding:10px 20px;margin-top:40px;}

	#footer{}
</style>
</head>

<body>
	<%@ include file="header.jsp"%>
	<% 
		request.setCharacterEncoding("UTF-8");
		ShopDAO sdao = new ShopDAO();
		ArrayList<ShopSalesVO> ssvo = sdao.getPAllInfo();
	%> 

	<div id="wrap">
		<section id="main">
			<div class="main_in">
				<div class="menu">
					<h2><a href="index2.jsp">메인으로</a></h2>

					<nav>
						<ul>
							<li><a href="RegisterP.jsp">상품등록</a></li>
							<li><a href="Rproductlist.jsp">상품목록</a></li>
							<li><a href="getPAllInfo.jsp">주문목록</a></li>
							<li><a href="getCinfo.jsp">고객관리</a></li>
							<li><a href="maechul.jsp">매출관리</a></li>
						</ul>
					</nav>
				</div>

				<div class="print">
					<div class="print_in">
						<form name="cartlist" class="form">
					<table>
						<colgroup>
							<col width="10%"/>
							<col width="25%"/>
							<col width="10%"/>
							<col width="10%"/>
							<col width="10%"/>
						</colgroup>
				
						<tr>
							<th><h2>판매ID</h2></th>
						  	<th><h2>판매날짜</h2></th>
						  	<th><h2>상품코드</h2></th>
						  	<th><h2>판매갯수</h2></th>
						  	<th><h2>판매가격</h2></th>
						</tr>
						<%
						for (ShopSalesVO scjvo : ssvo){						
						%>
						<tr>
							<td><%=scjvo.getSid() %></td>
						  	<td><%=scjvo.getSdate() %></td>
						  	<td><%=scjvo.getSpname() %></td>
						  	<td><%=scjvo.getScount() %></td>
						  	<td><%=scjvo.getSprice() %></td>
							
						<% } %>
						</tr>
					</table>
				</form>

				<style>
					.yi{border:1px solid rgba(0,0,0,.3);}
					.yi h4{border-bottom:1px solid rgba(0,0,0,.3);padding:10px;font-size:14px;font-weight: bold;}
					.yi ol{padding:10px;}
					.yi ol li{line-height:18px;font-size:14px;}
					.yi ol li h3{padding:10px 0;}
				</style>
					</div>
				</div>
			</div>

		</section>
	</div>

	<%@ include file="footer.jsp"%>
</body>

</html>