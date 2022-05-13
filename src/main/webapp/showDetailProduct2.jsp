<%@page import="shopProductsVO.ShopProductsVO"%>
<%@page import="shopDAO.ShopDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<style>
#wrap{width:100%;font-family: "Noto Sans KR";height:100%;padding:50px 0;}
#wrap #main{width:100%;height:100%;}
#wrap #main .main_in{width:1240px;height: 100%;margin:0 auto;}
#wrap #main .main_in > h2{font-size:32px;margin:24px 0;font-weight: bold;text-align: center;}
#wrap #main .main_in > h5{text-align: center;font-size:20px;font-weight:bold;margin-bottom:60px;}
#wrap #main .main_in form{display: flex;flex-wrap: wrap;border:1px solid rgba(0,0,0,.4);}

#wrap #main .main_in form .left{width:60%;padding:50px 0;border-right:1px solid rgba(0,0,0,.4);}
#wrap #main .main_in form .left img{display: block;width:500px;margin:0 auto;height:500px;}


#wrap #main .main_in form  .right{width:40%;display: flex; flex-wrap: wrap; justify-content: center; align-items: center; justify-items: center;letter-spacing:1px;}
#wrap #main .main_in form  .right .right_in{padding:  30px;margin-top:-200px;}
#wrap #main .main_in form  .right .right_in h3{line-height:30px;}
#wrap #main .main_in form  .right .right_in h3:nth-child(3){line-height:20px;}
#wrap #main .main_in form  .right .right_in .radio_wrap{margin-bottom:20px;}
#wrap #main .main_in form  .right .right_in .ifBtn{font-size:14px;padding:5px 10px;}

.payBtn{}
.payBtn input{padding:10px 20px;margin-top:40px;}
</style>
   <script>
       $(function(){
          $("#login_pil").click(function(){
             $("#loginPopup").stop().fadeIn();
          });
       });
    </script>

</head>
<body>
   <%@ include file="header.jsp"%>
   <% 
      String pname = (String)request.getParameter("id");
      String uid = (String)session.getAttribute("user_id");
   %>
   <%
      ShopDAO shopdao = new ShopDAO();
      ArrayList <ShopProductsVO> listProducts = shopdao.getProductDetail(pname);

   /* String ppname = null; */
   for(int i = 0; i < listProducts.size(); i++){
         ShopProductsVO product = listProducts.get(i);
   %>            
      <div id="wrap">
         <section id="main">
            <div class="main_in">
               <h2>남자 하의 상품 목록</h2>
               <h5><%=pname%></h5>
               <form action="detailprocess.jsp">
                  <div class="left">
                     <img src="img/<%=product.getPimg()%>">
                  </div>
                  
                  <div class="right">
                     <div class="right_in">
                        <h3><span>상품명 : </span><%=product.getPanme()%></h3>
                        <h3><span>가  격 : </span><%=product.getPprice()%>원</h3>
                        <h3><span>상품설명 : </span><br><%=product.getPtext()%></h3>
                        
                        <h3>사이즈</h3>
                        <div class="radio_wrap">
                           <span><input type="radio" name="size" value="S" >S</span>
                           <span><input type="radio" name="size" value="M" checked="checked">M</span>
                           <span><input type="radio" name="size" value="L" >L</span>
                        </div>
   
                        <input type="hidden" name ="hpname" value=<%=product.getPanme()%>>
   
                        <% if(uid == null){ %>         
                           <input class="ifBtn" type="button" value = "로그인이 필요합니다" id="login_pil">
                        <% } else { %>
                           <input class="ifBtn" type="submit" value="장바구니담기">   
                        <% } %>
                     </div>
                  </div>
               </form>   
         </section>
      </div>
   <%} %>

   <%@ include file="footer.jsp"%>
</body>
</html>