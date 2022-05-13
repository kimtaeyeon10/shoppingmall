<%@page import="shopCustomersVO.ShopCustomersQVO"%>
<%@page import="shopCustomersVO.ShopCustomersVO"%>
<%@page import="shopDAO.ShopDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%
request.setCharacterEncoding("UTF-8");
ShopDAO sDao = new ShopDAO();
String oriId = request.getParameter("cusid");
//String oriId = "a100";
ShopCustomersVO scvo = sDao.search(oriId);
%>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>5조네 쇼핑몰</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap"
   rel="stylesheet">

<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/common.js"></script>
<style>
input {outline: none;}
.formId {border: none;font-size: 16px;}
.formName {border: none;font-size: 16px;}
#delete_pop{border:1px solid rgba(0,0,0,.5);width:400px;height:350px;position: absolute;left:50%;top:50%;background: #fff;transform: translate(-50%,-50%);border-radius: 10px;display:none;}
#delete_pop .delete_in{padding:50px;display: flex;flex-wrap: wrap;justify-content: center;align-items: center;height:100%;}
#delete_pop .delete_in > form > h2{text-align: center;font-size:16px;line-height:42px;margin-bottom:26px;}
#delete_pop .delete_in > form .btn{padding:10px 0;font-size:18px;float:left;}
#delete_pop .delete_in > form .delClose{padding:10px 0;font-size:18px;float:right;}

*{box-sizing: border-box;}
#wrap{width:100%;height:calc(100vh - 110px);font-family: "Noto Sans KR";border:1px solid red;}
#wrap #main{width:100%;height:100%;}
#wrap #main .main_in{width:100%;height: 100%;display: flex;flex-wrap: wrap;justify-items: center;align-items: center;}
#wrap #main .main_in h2{line-height:28px;margin-bottom:10px;width:100%;}
#wrap #main .main_in h2:first-child{font-size:22px;margin-bottom:28px;font-weight: bold;}
#wrap #main .main_in h2 span{border:1px solid rgba(0,0,0,.2);width:85px;display: inline-block;margin-right:10px;padding:0 8px;height:30px;vertical-align: middle;}
#wrap #main .main_in h2 input{border:1px solid rgba(0,0,0,.2);padding:0 8px;height:30px;display: inline-block;vertical-align: middle;width: 250px;}
#wrap #main .main_in h2 .input{border:1px solid rgba(0,0,0,.2);padding:0 8px;height:30px;display: inline-block;vertical-align: middle;width: 250px;}
#wrap #main .main_in .form{margin:0 auto;padding:50px;border:1px solid rgba(0,0,0,.3);border-bottom-left-radius: 30px;border-top-right-radius: 30px;}
</style>


</script>
</head>

<body>
   <%@ include file="header.jsp"%>



   <div id="wrap">
      <section id="main">
         <div class="main_in">
            <form action="joinOk.jsp" method="post" class="form">
               <h2>회원가입</h2>
               <h2><span>아이디</span><input type="Text" name="cid" placeholder="아이디" required class="form_id"></h2>
               <h2><span>비밀번호</span><input type="Text" name="cpass" placeholder="비밀번호" required class="form_in"></h2>
               <h2><span>이름</span><input type="Text" name="cname" placeholder="이름" required class="formname"></h2>
               <h2><span>전화번호</span><input type="Text" name="ctel" placeholder="전화번호" required  maxlength="13"></h2>
               <h2><span>주소</span><input type="Text" name="caddress" placeholder="주소" required class="form_in"></h2>
               <h2><span>질문</span>
               <select name="cques" class="input">
               		<option value="자신의 보물 제1호는?">자신의 보물 제1호는?</option>
                    <option value="유년시절 가장 생각나는 친구 이름은?">유년시절 가장 생각나는 친구 이름은?</option>
                    <option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
                    <option value="다시 태어나면 되고 싶은 것은?">다시 태어나면 되고 싶은 것은?</option>
				</select>
				</h2>
               
               <h2><span>답변</span><input type="Text" name="canswer" placeholder="질문에 대한 답을 입력하세요." required class="form_in"><br></h2>
               <input type="submit" value="가입하기">
               <input type="reset" value="취소">
            </form>

         </div>
      </section>
   </div>

   <%@ include file="footer.jsp"%>
</body>

</html>