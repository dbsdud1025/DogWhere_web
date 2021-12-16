<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나어디개 QR목걸이</title>
<script src="./js/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous">
        </script>
<link rel="stylesheet" type="text/css" href="./css/font.css" />
<link rel="stylesheet" type="text/css" href="./css/common.css" />
<link rel="stylesheet" type="text/css" href="./css/layout.css" />
<link rel="stylesheet" type="text/css" href="./css/header.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css" />
<link rel="stylesheet" type="text/css" href="./css/style.css" />
<script type="text/javascript" src="./js/main.js"></script>

<!-- 슬라이드 -->
<link rel="stylesheet" type="text/css" href="./css/swiper.css" />
<script type="text/javascript" src="./js/swiper.js"></script>
<script type="text/javascript" src="./js/swiper.min.js"></script>

<!-- 파이어베이스 -->
<script src="https://www.gstatic.com/firebasejs/7.2/firebase.js"></script>

<!-- Insert these scripts at the bottom of the HTML, but before you use any Firebase services -->

<!-- Firebase App (the core Firebase SDK) is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/8.6.2/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.6.2/firebase-messaging.js"></script>
<!-- If you enabled Analytics in your project, add the Firebase SDK for Analytics -->
<script
	src="https://www.gstatic.com/firebasejs/8.6.2/firebase-analytics.js"></script>

<!-- Add Firebase products that you want to use -->
<script src="https://www.gstatic.com/firebasejs/8.6.2/firebase-auth.js"></script>
<script
	src="https://www.gstatic.com/firebasejs/8.6.2/firebase-firestore.js"></script>
<script src="./js/firebase.js?ver=14"></script>

</head>
<body>
	<header id="header">
		<div class="head overflow">
			<h1 class="logo">
				<a href="index.jsp"> <img src="./img/logo.svg">
				</a>
			</h1>
			<div>
				<ul class="overflow" id="makerspace_menu">
					<li class=""><a href="#">나어디개 앱</a></li>
					<li class=""><a href="#">QR 목걸이</a></li>
					<li class=""><a href="doglist.jsp?state=false">분실 강아지 현황</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!-- 헤더 끝-->