<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배짱장사</title>
</head>
<body>
	<form action="loginprocess.jsp">
	아이디 <input type="text" name = "logid" required><br>
	비밀번호 <input type="password" name = "logpass" required><br>
	<input type="submit" value="로그인">
	<input type="button" value="창닫기" onClick='self.close()'>

	</form>
	<br>
	<form action="findbimil.jsp">
	<input type="submit" value="비?밀?번?호?">
	</form>
	
<!-- 	<br>
	<form action="join.jsp">
	<input type="submit" value="가자회원가입">
	</form> -->

</body>
</html>