<%@page import="java.util.ArrayList"%>
<%@page import="shopDAO.ShopDAO"%>
<%@page import="shopProductsVO.ShopProductsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>배짱장사</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap"
   rel="stylesheet">

<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/main.js"></script>

<style>
   *{box-sizing: border-box;}

   #wrap{width:100%;font-family: "Noto Sans KR";}
   #wrap #main{width:100%;height:100%;}
   #wrap #main .main_in{width:100%;height:100%;display: flex;}
   #wrap #main .main_in .menu{width:250px;height:calc(100vh - 110px);}
   #wrap #main .main_in .menu h2{width: 100%;margin:50px 0;}
   #wrap #main .main_in .menu h2 a{display: block;width:100%;text-align: center;color:#000;font-size:30px;font-weight: bold;}

   #wrap #main .main_in .menu nav{width:100%;text-align: center;}
   #wrap #main .main_in .menu nav ul{width:150px;margin:0 auto;}
   #wrap #main .main_in .menu nav ul li{background: #939393;margin-bottom:15px;border-radius: 10px;}
   #wrap #main .main_in .menu nav ul li a{display: block;color:#fff;padding:15px;font-size:20px;font-weight: bold;}

   #wrap #main .main_in .print{width:calc(100% - 250px);height:100%;font-size:30px;}
   #wrap #main .main_in .print .print_in{height:100%;padding: 50px;text-align:center;}
   #wrap #main .main_in .print .print_in form{display: flex; flex-wrap: wrap; justify-content: center; align-items: center; justify-items: center; height: 100%;}
   
   
   table{}
   tr{}
   th{border:1px solid #030303;padding:10px 15px;}
   td{border:1px solid #030303;padding:10px 15px;font-size:30px;}
</style>
</head>

<body>
   <%@ include file="header.jsp"%>

   <div id="wrap">
      <section id="main">
         <div class="main_in">
            <div class="menu">
               <h2><a href="index2.jsp">메인으로</a></h2>

               <nav>
                  <ul>
                     <li><a href="RegisterP.jsp">상품등록</a></li>
                     <li><a href="Rproductlist.jsp">상품목록</a></li>
                     <li><a href="getPAllInfo.jsp">주문목록</a></li>
                     <li><a href="getCinfo.jsp">고객관리</a></li>
                     <li><a href="maechul.jsp">매출관리</a></li>
                  </ul>
               </nav>
            </div>
            
            <div class="print">
               <div class="print_in">
                  
                  <div class="bottom" style="margin-top:130px;">
                     <div class="bottom_in">
                     <p style="font-size:45px;">매출 현황</p><br>
                     
                     <form name="maechulinfo">
<!--                      전월 총매출
                        당월 총매출
                        전월 대비 증감액 -->
                        <%ShopDAO sdao = new ShopDAO(); 
                           int dang = sdao.dang();
                           int jhun = sdao.jhun();
                        %>
                        
                        <%--     <h2>당월 총매출은 <%=dang %></h2>
                            <h2>전월 총매출은 <%=jhun %></h2>
                            <h2>전월대비 증감액은 <%=dang-jhun %></h2> --%>
                        <table>
                        <tr>
                           <th><h2>당월 총매출</h2></th>
                           <th><h2>전월 총매출</h2></th>
                           <th><h2>전월대비 증감액</h2></th>
                        </tr>
                        <tr>
                           <td><h2><%=dang %>원</h2></td>
                           <td><h2><%=jhun %>원</h2></td>
                           <td><h2><%=dang-jhun %>원</h2></td>
                        </tr>
                        </table>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>

   <%@ include file="footer.jsp"%>
</body>

</html>