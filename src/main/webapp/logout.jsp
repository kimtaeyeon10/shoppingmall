<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배짱장사</title>
</head>
<body>
	<%
	session.removeAttribute("user_id");
	response.sendRedirect("index.jsp");
	%>
	
</body>
</html>