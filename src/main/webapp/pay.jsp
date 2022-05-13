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
</head>
<body>
	<%	//장바구니를 판매에넣기
	String uid = (String)session.getAttribute("user_id");
	ShopDAO sdao = new ShopDAO();
	ArrayList <ShopCartJoinVO> cjarr = sdao.ctop(uid);
	for (ShopCartJoinVO scjvo : cjarr){
		sdao.ctop2(uid, scjvo.getPcode(), 1, scjvo.getPprice());
	} 
	//장바구니 비우기 
	sdao.delcartList(uid);
	//response.sendRedirect("cartList2.jsp");
	%>
	
	<script>
       alert("결제 완료");
       document.location.href='index.jsp';
    </script>
	
</body>
</html>