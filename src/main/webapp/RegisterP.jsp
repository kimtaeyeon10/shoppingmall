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
<link rel="stylesheet" href="css/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap"
   rel="stylesheet">

<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/common.js"></script>
<style>
   *{box-sizing: border-box;}

   #wrap{width:100%;height:calc(100vh - 110px);font-family: "Noto Sans KR";}
   #wrap #main{width:100%;height:100%;}
   #wrap #main .main_in{width:100%;height:100%;display: flex;}
   #wrap #main .main_in .menu{width:250px;height:100%;}
   #wrap #main .main_in .menu h2{width: 100%;margin:50px 0;}
   #wrap #main .main_in .menu h2 a{display: block;width:100%;text-align: center;color:#000;font-size:30px;font-weight: bold;}

   #wrap #main .main_in .menu nav{width:100%;text-align: center;}
   #wrap #main .main_in .menu nav ul{width:150px;margin:0 auto;}
   #wrap #main .main_in .menu nav ul li{background: #939393;margin-bottom:15px;border-radius: 10px;}
   #wrap #main .main_in .menu nav ul li a{display: block;color:#fff;padding:15px;font-size:20px;font-weight: bold;}

   #wrap #main .main_in .print{width:calc(100% - 250px);height:100%;}
   #wrap #main .main_in .print .print_in{height:100%;padding: 0 50px;}
   #wrap #main .main_in .print .print_in .top{padding:30px 0px;height:95px;}
   #wrap #main .main_in .print .print_in .top .top_in{}
   #wrap #main .main_in .print .print_in .top .top_in form{}
   #wrap #main .main_in .print .print_in .top .top_in form input{padding:8px;outline: none;}
   
   *{box-sizing: border-box;}
      #wrap{width:100%;font-family: "Noto Sans KR";height:100%;padding:50px 0;}
      #wrap #main{width:100%;height:100%;}
      #wrap #main .main_in{width:1240px;height: 100%;margin:0 auto;}
      #wrap #main .main_in h2{font-size:32px;margin:24px 0;font-weight: bold;text-align: center;margin-bottom:60px;}
      #wrap #main .main_in .container{}
      #wrap #main .main_in .container .allproducts{display:flex;flex-wrap: wrap;}
      #wrap #main .main_in .container .allproducts .product{width:25%;margin-top:30px;}
      #wrap #main .main_in .container .allproducts .product:first-child{margin-top:0px;}
      #wrap #main .main_in .container .allproducts .product:nth-child(2){margin-top:0px;}
      #wrap #main .main_in .container .allproducts .product:nth-child(3){margin-top:0px;}
      #wrap #main .main_in .container .allproducts .product:nth-child(4){margin-top:0px;}
      #wrap #main .main_in .container .allproducts .product a{display:block;}
      #wrap #main .main_in .container .allproducts .product a img{display:block;width:180px;margin:0 auto;height:180px;}
      #wrap #main .main_in .container .allproducts .product h3{text-align: center;font-size:18px;font-weight: bold;padding: 5px;}
      #wrap #main .main_in .container .allproducts .product p{text-align: center;font-size:18px;font0weight:bold;padding: 5px;}
      
      .payBtn{}
      .payBtn input{padding:10px 20px;margin-top:40px;}
   
      #footer{}
   *{box-sizing: border-box;}
      #wrap{width:100%;height:calc(100vh - 110px);font-family: "Noto Sans KR";}
      #wrap #main{width:100%;height:100%;}
      #wrap #main .main_in{width:100%;height: 100%;display: flex;flex-wrap: wrap;justify-items: center;align-items: center;}
      #wrap #main .main_in h2{line-height:28px;margin:0 0 10px;width:100%;}
      #wrap #main .main_in h2:first-child{font-size:22px;margin-bottom:28px;font-weight: bold;}
      #wrap #main .main_in h2 span{border:1px solid rgba(0,0,0,.2);width:85px;display: inline-block;margin-right:10px;padding:0 8px;height:30px;vertical-align: middle;font-size:14px;font-weight: 400;text-align: left;}
      #wrap #main .main_in h2 input{border:1px solid rgba(0,0,0,.2);padding:0 8px;height:30px;display: inline-block;vertical-align: middle;width: 250px;}
      #wrap #main .main_in h2 .input{border:1px solid rgba(0,0,0,.2);padding:0 8px;height:30px;display: inline-block;vertical-align: middle;width: 250px;}
      #wrap #main .main_in .form{margin:0 auto;padding:50px;border:1px solid rgba(0,0,0,.3);border-bottom-left-radius: 30px;border-top-right-radius: 30px;}

      #wrap #main .main_in .inputBtn{width:49%;float:right;padding:10px 0;cursor: pointer;margin-top:20px;}
	  #wrap #main .main_in .inputBtn:after{display: block;clear: both;}
	  #wrap #main .main_in .inputBtn.le{width:49%;float:left;padding:10px 0;}
	  #wrap #main .main_in .inputBtn.le:after{display:block;clear: both;}

/*    #wrap #main .main_in .print .print_in .bottom{border:1px solid red;height:100%;height:calc(100% - 95px);}
   #wrap #main .main_in .print .print_in .bottom .bottom_in{display: flex;flex-wrap: wrap;justify-items: center;align-items: center;height:100%;width:100%;}
   #wrap #main .main_in .print .print_in .bottom .bottom_in > div{background: #e4e4e4;width:25%;margin:4%;height:150px;} */
</style>
</head>

<body>
   <%@ include file="header.jsp"%>
   <%
      request.setCharacterEncoding("UTF-8");
      ShopDAO shopdao = new ShopDAO();
      ArrayList <ShopProductsVO> listProducts = shopdao.getAllProducts();
   %>

   <div id="wrap">
      
      <section id="main">
         <div class="main_in" style="width:1240px;">
            <div class="menu">
               <h2><a href="index2.jsp" style="margin-bottom:50px;">메인으로</a></h2>

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
                     <section id="main">
                        <div class="main_in">
                           <form action="ResisterPok.jsp" method="post" class="form">
                              <h2>상품 등록</h2>
                              <h2><span>상품코드</span><input type="text" name="pcode"  required ></h2>
                              <!-- 사이즈<input type="text" name="psize" ><br> -->
                              <h2><span>상품이름</span><input type="text" name="panme" required ></h2>
                              <h2><span>상품개수</span><input type="text" name="pcount"  ></h2>
                              <h2><span>상품가격</span><input type="text" name="pprice" required ></h2>
                              <h2><span>상품설명</span><input type="text" name="ptext"  ></h2>
                              <h2><span>상품이미지</span><input type="text" name="pimg" ></h2>
                              <input type="submit" value="상품등록" class="inputBtn le">
                              <input type="reset" value="취소" class="inputBtn">
                           </form>
                     </div>                  
               </section>
               </div>
            </div>
         </div>
         </div>
      </section>
   </div>

   <%@ include file="footer.jsp"%>
</body>

</html>