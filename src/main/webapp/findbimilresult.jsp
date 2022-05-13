<%@page import="java.io.PrintWriter"%>
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
<body><!-- findbimilresult.jsp -->
	<%
	
	request.setCharacterEncoding("UTF-8");
	
	String answer = request.getParameter("answer"); // 답변
	
	String suan = (String) session.getAttribute("uan"); // db답변
	String supa = (String) session.getAttribute("upa"); // 패스워드
		
	
	if(answer.equals(suan)){
	%>
		비밀번호는 <%=supa %>입니다.
		<form action="index.jsp">
			<input type="button" value="창닫기" onClick='self.close()'>
		</form>
	<% 
	}else{%>
		<script>
			alert('잘못 입력하셨습니다.');		
		 	document.location.href='findbimil.jsp';
		</script>
		
	<%  	//response.sendRedirect("findbimil.jsp"); 	
	}
	%>
	
</body>
</html>