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
</head>

<body>
	<%@ include file="header.jsp"%>

	<div id="wrap">
		<section id="main">
			<div class="main_in">
				<div class="slider">
					<div class="swiper main_slider">
						<div class="swiper-wrapper">
							<div class="swiper-slide img1">Slide 1</div>
							<div class="swiper-slide img2">Slide 2</div>
							<div class="swiper-slide img3">Slide 3</div>
						</div>
						<div class="swiper-pagination main_pagi"></div>
						<div class="swiper-button-prev main_prev"></div>
						<div class="swiper-button-next main_next"></div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="footer.jsp"%>
</body>

</html>