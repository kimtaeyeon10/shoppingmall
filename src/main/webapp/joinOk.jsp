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
	
	String cid = request.getParameter("cid");
	String cpass = request.getParameter("cpass");
	String cname = request.getParameter("cname");
	String ctel = request.getParameter("ctel");
	String caddress = request.getParameter("caddress");
	
	String cques = request.getParameter("cques");
	String canswer = request.getParameter("canswer");
	
	boolean b = sDAO.join_cus(cid,cpass,cname,ctel,caddress,cques,canswer);
	%>
	
	<div>
      <!-- <h2>회원가입 완료</h2>
      <a href="index.jsp">메인으로</a> -->
      <script>
       alert("회원가입 완료");
       document.location.href='index.jsp';
       </script>
   </div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>