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

	<%@ include file="header.jsp"%>

	<%
    request.setCharacterEncoding("UTF-8");
    ShopDAO sDao = new ShopDAO();
    
    String pw = request.getParameter("pw");
    String tel = request.getParameter("tel");
    String add = request.getParameter("add");
    String ques = request.getParameter("ques");
    String ans = request.getParameter("ans");
    String id = request.getParameter("id");
    
    boolean b1 = sDao.update(pw, tel, add, ques, ans, id);
    
    if(b1){
    	response.sendRedirect("index.jsp"); // update ok
    	%>
    <!-- 	<script type="text/javascript">
		location.reload();
		</script> -->
    <%}else { %>
    <a href = "update.jsp">사원수정 에러 - 수정화면으로</a>
    <% } %>
    
	<%@ include file="footer.jsp"%>

</body>
</html>