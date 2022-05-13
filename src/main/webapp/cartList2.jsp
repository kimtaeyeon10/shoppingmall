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
	#wrap #main .main_in h2{font-size:32px;margin:24px 0;font-weight: bold;}
	#wrap #main .main_in .form{}
	#wrap #main .main_in .form table{width:100%;border-collapse:collapse;}
	#wrap #main .main_in .form table tr{}
	#wrap #main .main_in .form table tr td{vertical-align: middle;text-align: center;border:1px solid #e3e3e3;padding:20px;border-collapse:collapse;}
	#wrap #main .main_in .form table tr:first-child td:last-child{border:none;}
	
	.payBtn{}
	.payBtn input{padding:10px 20px;margin-top:40px;}

	#footer{}
</style>
</head>
<body><!-- cartList2.jsp -->
	<%@ include file="header.jsp"%>
	 
	<% 
		request.setCharacterEncoding("UTF-8");
		String cid = (String)session.getAttribute("user_id");
		ShopDAO sdao = new ShopDAO();
		ArrayList<ShopCartJoinVO> cjarr = sdao.getCartJoinList(cid);
	%> 
	<div id="wrap">
		<section id="main">
			<div class="main_in">
				<h2>장바구니</h2>
				<form name="cartlist" class="form">
					<table>
						<colgroup>
							<col width="15%"/>
							<col width="30%"/>
							<col width="15%"/>
							<col width="15%"/>
							<col width="15%"/>
						</colgroup>
				
						<tr>
							<td>상품이미지</td>
							<td>상품명</td>
							<td>사이즈</td>
							<td>가격</td>
							<td></td>
						</tr>
						<%
						int c = 1;
						for (ShopCartJoinVO scjvo : cjarr){
							
						%>
						<tr>
							<td><img src="img/<%=scjvo.getPimg() %>" width="75" height="100"></td>
							<td><%=scjvo.getPname() %></td>
							<td><%=scjvo.getPsize() %></td>
							<td><%=scjvo.getPprice() %></td>
							<td><a href ="cartDelete.jsp?num=<%=c%>">삭제</a></td>
							
						<% c++; } %>
						</tr>
					</table>
				</form>
				
				<form action="pay.jsp" class="payBtn">
					<input type="submit" value="결 제 하 기">
				</form>
			
				<!--
					결제버튼
					결제 버튼을 누르면!
					장바구니에 고른상품들이
					sales 테이블에 들어가고					1번 작업
					현재 고객의 장바구니는 비워진다.				2번 작업
					?
					장바구니 목록삭제 버튼은 어디?				3번 작업
					-------------------------------------
					수량??????????????????????????
					고른만큼 products 에선 차감하고 sales 에는 들어가는?
					장바구니는???? 일단보류
					---------------------------------------
				 -->
				
				<div style="width:100%;margin-top:40px;" class="yi">
					<h4>이용안내</h4>
					<ol>
						<li><h3>장바구니 이용안내</h3></li>
						<li>1. 장바구니 이용안내 현황 입니다.</li>
						<li>2. 장바구니 이용안내 현황 입니다.</li>
						<li>3. 장바구니 이용안내 현황 입니다.</li>
						<li>4. 장바구니 이용안내 현황 입니다.</li>
						<li>5. 장바구니 이용안내 현황 입니다.</li>
						<li>6. 장바구니 이용안내 현황 입니다.</li>
					</ol>

					<ol>
						<li><h3>결제안내</h3></li>
						<li>1. 결제 이용안내 현황 입니다.</li>
						<li>2. 결제 이용안내 현황 입니다.</li>
						<li>3. 결제 이용안내 현황 입니다.</li>
						<li>4. 결제 이용안내 현황 입니다.</li>
						<li>5. 결제 이용안내 현황 입니다.</li>
						<li>6. 결제 이용안내 현황 입니다.</li>
					</ol>
				</div>
				
				<style>
					.yi{border:1px solid rgba(0,0,0,.3);}
					.yi h4{border-bottom:1px solid rgba(0,0,0,.3);padding:10px;font-size:14px;font-weight: bold;}
					.yi ol{padding:10px;}
					.yi ol li{line-height:18px;font-size:14px;}
					.yi ol li h3{padding:10px 0;}
				</style>
				
			</div>
		</section>
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>