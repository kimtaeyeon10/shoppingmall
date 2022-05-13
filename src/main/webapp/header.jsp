<%@page import="shopDAO.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <style>
        #header{width: 100%;position: relative;z-index: 9999;font-family: "Noto Sans KR";border-bottom:1px solid rgba(0,0,0,.2);}
        #header .header_in{width: 100%;margin: 0 autoposition: relative;}
		#header .header_in h1{height: 110px;line-height: 110px;font-size: 40px;font-weight: bold;margin-left: 80px;}
        #header .header_in h1 a{display: inline-block;color: #000;}
        #header .header_in .menu{cursor: pointer;position: absolute;left: 15px;top: 50%;transform: translateY(-50%);}
        #header .header_in .menu h2{width: 50px;height: 50px;text-align: center;line-height: 50px;}
        #header .header_in #nav{position: absolute;left: 15px;top: 100px;display: none;background: #fff;border:1px solid rgba(0,0,0,.4);width:200px;}
        #header .header_in #nav>ul{padding: 5px;width:100%;}
        #header .header_in #nav ul>li{cursor: pointer;}
        #header .header_in #nav ul>li>h2{display: block;padding: 5px 10px;}
        #header .header_in #nav ul li:hover h2{color:skyblue;}
        #header .header_in #nav ul .depth2{display: none;}
        #header .header_in #nav ul .depth2 li{padding-left: 20px;}
        #header .header_in #nav ul .depth2 li a{display: block;padding: 5px 10px; color:#444;}
        #header .header_in #nav ul .depth2 li a:hover{color:skyblue;}
        #header .header_in .side_menu{position: absolute;right: 15px; position: absolute;top: 50%;transform: translateY(-50%);}
        #header .header_in .side_menu .side_in{}
        #header .header_in .side_menu .side_in > div{float: left;margin-left: 15px;cursor: pointer;}
        #header .header_in .side_menu .side_in > div:first-child {margin-left: 0;}

        /* 
        #header .header_in .side_menu .side_in .search{border:1px solid rgba(0,0,0,.3);background: #fff;border-radius: 10px;width:150px;height:26px;overflow: hidden;}
        #header .header_in .side_menu .side_in .search .search_in{width:100%;height:100%;}
        #header .header_in .side_menu .side_in .search .search_in .left{background: #e8e8e8;width:26px;height:100%;float:left;position: relative;}
        #header .header_in .side_menu .side_in .search .search_in .left .icon{display: block;width:60%;height:60%;background: url(img/search.png) 50% 50%;background-size: cover;position: absolute;left:50%;top:50%;transform: translate(-50%,-50%);opacity: .7;}
        #header .header_in .side_menu .side_in .search .search_in .right{float:left;height:100%;width:calc(100% - 26px);}
 		*/
 		
        #header .header_in .side_menu .side_in .side_dep.bgn {background: none;margin-left: 0;}
        #header .header_in .side_menu .side_in .side_dep {background: skyblue; border-radius: 10px;padding: 5px 15px; color: #fff;}
        #header .header_in .side_menu .side_in .side_dep h2 {line-height: 22px;}
        #header .header_in .side_menu .side_in .side_dep a {display: block;color: #fff;}
    </style>

    <script>
        $(function () {
            $("#login_pop").click(function () {
                $("#loginPopup").stop().fadeToggle();
            });
            $(".loginClosePop").click(function () {
                $("#loginPopup").stop().fadeOut();
            });
        });
    </script>

    <header id="header">
        <div class="header_in">
            <div>
                <h1><a href="index.jsp">쇼핑몰</a></h1>
            </div>

            <div class="menu">
                <h2>메뉴</h2>
            </div>

            <nav id="nav">
                <ul>
                    <li>
                        <h2>여성</h2>
                        <ul class="depth2">
                            <li><a href="allWproduct.jsp">여성 상품 전체</a></li>
                            <li><a href="allWSproduct.jsp">여성 상의</a></li>
                            <li><a href="allWHproduct.jsp">여성 하의</a></li>
                        </ul>
                    </li>

                    <li>
                        <h2>남성</h2>
                        <ul class="depth2">
                            <li><a href="#" onclick="location.href='allMproducts.jsp'">남성 상품 전체</a></li>
                            <li><a href="#" onclick="location.href='allMSproducts.jsp'">남성 상의</a></li>
                            <li><a href="#" onclick="location.href='allMHproducts.jsp'">남성 하의</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <div class="side_menu">
                <div class="side_in">
                    <div class="search">
                        <div class="search_in">
                            <div class="left">
                                <div class="icon"></div>
                            </div>
                            <div class="right">

                            </div>
                        </div>
                    </div>
                    <!-- 로그인창 팝업화 -->
                    <!-- <div class="login side_dep"  onclick = "window.open('loginpop.jsp','','width =300 , height = 300, top = 100, left = 1000, location = no')">
                        <div class="login_in">
                            <h2>로그인</h2>
                        </div>
                    </div> -->
                    <div class="login side_dep bgn">
                        <form action="reSearch.jsp" method="get">
                            <input type="text" placeholder="상품을 검색하세요!" name="keyword">
                            <input type="submit" value="검색">
                        </form>
                    </div>
                    <!-- 로그인 세션시도 -->
                    <%
                  if(session.getAttribute("user_id")==null) {
                  %>
                    <div class="login side_dep" id="login_pop">
                        <div class="login_in">
                            <h2>로그인</h2>
                        </div>
                    </div>

                    <div class="login side_dep">
                        <div class="login_in">
                            <h2><a href="join.jsp">회원가입</a></h2>
                        </div>
                    </div>

                    <%   
                  }else if(session.getAttribute("user_id").equals("admin")){%>
                    <%
                  ShopDAO sdao = new ShopDAO();
                  int m = sdao.todaysales();
                  %>
                    <div class="login side_dep">
                        <h2>오늘의 매출액은! <%= m %>원!!</h2>
                    </div>
                    <div class="login side_dep">
                        <h2>주인님! 환영합니다!</h2>
                    </div>
                    <div class="login side_dep">
                        <h2><a href="index2.jsp">관리자</a></h2>
                    </div>
                    <div class="login side_dep" onclick="location.href='logout.jsp'">
                        <div class="login_out">
                            <h2>로그아웃</h2>
                        </div>
                    </div>
                    <%
                  }else{
                  %>
                    <div class="login side_dep">
                        <div class="login_OK">
                            <h2><%=session.getAttribute("user_id")%>님 환영합니다?</h2>
                        </div>
                    </div>



                    <div class="login side_dep" onclick="location.href='logout.jsp'">
                        <div class="login_out">
                            <h2>로그아웃</h2>
                        </div>
                    </div>

                    <div class="login side_dep">
                        <div class="Userinfo">
                            <h2><a href="update.jsp?cusid=<%=session.getAttribute("user_id")%>">내정보</a></h2>
                        </div>
                    </div>

                    <div class="basket side_dep">
                        <div>
                            <h2><a href="cartList2.jsp">장바구니</a></h2>
                        </div>

                    </div>

                    <%      
                  }
               %>
                    <!-- 로그인 세션시도끝 -->

                    <!-- 어드민! -->
                    <%-- <%
                  if(session.getAttribute("user_id").equals("admin")){%>
                    <div class="basket side_dep">
                        <h2><a href="index2.jsp">관리자</a></h2>
                    </div>
                    <%
                  }
               %> --%>



                </div>
            </div>
        </div>
    </header>

    <section id="loginPopup">
        <div class="loginp_in">
            <form action="loginprocess.jsp">
                <p><span>아이디 :</span><input type="text" name="logid" required></p>
                <p><span>비밀번호 :</span><input type="password" name="logpass" required></p>
                <input type="submit" value="로그인" style="width:49%;height:38px;float:left;">
                <input type="button" value="창닫기" style="width:49%;height:38px;float:right;" class="loginClosePop">
                <input type="button" value="비?밀?번?호?" style="width:100%;height:38px;margin-top:15px;"
                    onclick="window.open('findbimil.jsp','','width =400 , height = 300, top = 100, left = 500, location = no')">
            </form>

        </div>
        <style>
            #loginPopup {position: absolute;left: 50%;top: 50%;z-index: 999999;background: #fff;
                padding: 50px;border-radius: 10px;transform: translate(-50%, -50%);display: none;border:1px solid rgba(0,0,0,.4);}
            #loginPopup .loginp_in {}
            #loginPopup .loginp_in p {display: flex;flex-wrap: wrap;line-height: 22px;}
            #loginPopup .loginp_in p:nth-child(2) {margin: 10px 0 15px;}
            #loginPopup .loginp_in p span {width: 85px;}
            #loginPopup .loginp_in p input {border: 1px solid rgba(0, 0, 0, .5);}
            input {outline: none;}
        </style>

    </section>
