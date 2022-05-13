<%@page import="shopDAO.ShopDAO"%>
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
   String logid = request.getParameter("logid");
   String logpass = request.getParameter("logpass");
   
   ShopDAO shopdao = new ShopDAO();
   boolean b1 = shopdao.shoplojin(logid, logpass);
   
   if(b1){
      //로그인성공
      session.setAttribute("user_id", logid);
      %>
      <script type="text/javascript">
      window.location = document.referrer;
      //opener.parent.location.reload();
      //window.close();
      </script>
      <%
   }else{
      //로그인실패
      %>
       <script>
       alert("ID 또는 PW를 잘못 입력했습니다.");
        document.location.href='index.jsp'; 
       </script>
       <%
      // response.sendRedirect("loginpop.jsp");    
   }
   
   %>
   
</body>
</html>