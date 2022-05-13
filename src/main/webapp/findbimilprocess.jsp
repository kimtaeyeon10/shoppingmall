<%@page import="shopCustomersVO.ShopCustomersQVO"%>
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
<body><!-- findbimilprocess.jsp -->
	<%
	
	request.setCharacterEncoding("UTF-8");
	
	ShopDAO shopdao = new ShopDAO();
	String cid = request.getParameter("findid");
	ArrayList <ShopCustomersQVO> ques = shopdao.getbimil(cid);
	%>
	<%
		for(int i =0 ; i < ques.size(); i++){
			ShopCustomersQVO q1 = ques.get(i);
		%>
		
			<h3><%=q1.getCques() %></h3>
			<%-- <h3><%=q1.getCpass() %></h3> --%>
		<%session.setAttribute("upa",q1.getCpass());%>	
		<%session.setAttribute("uan",q1.getCanswer());%>
	<% } %>	
	
	<form action="findbimilresult.jsp">
	답변 : <input type="text" name="answer">
	<input type="submit" value="확인">
	</form>
	
</body>
</html>