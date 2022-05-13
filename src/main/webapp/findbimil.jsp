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
<body><!-- findbimil.jsp -->
	<h1>비밀번호 찾기</h1>
	<form action="findbimilprocess.jsp">
	<p><span>아이디 :</span><input type="text" name = "findid" required></p>
	<input type="submit" value="확인">
	<input type="button" value="창닫기" onClick='self.close()'>
	</form>
	<style>
        p{display: flex;flex-wrap: wrap;line-height:22px;margin:10px  0 15px;}
        p span{width:85px;}
        p input{border:1px solid rgba(0,0,0,.5);}
        input{outline:none;}
    </style>
	
</body>
</html>