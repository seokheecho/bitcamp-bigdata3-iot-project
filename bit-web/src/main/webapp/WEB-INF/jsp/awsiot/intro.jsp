<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>IoTDevice intro</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/main.css" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/Footer-with-button-logo.css">
	<!-- Favicon and touch icons -->
	<link rel="icon" href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
</head>

<body class="subpage">

	<!-- Header -->
	<header id="header">
		<div class="logo"><a href="index.html">BIGDATA3 <span>by Donny</span></a></div>
		<a href="#menu">Menu</a>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="index.html">메인</a></li>
			<li><a href="loginmain.html">로그인</a></li>
			<li><a href="mypage.html">마이페이지</a></li>
			<li><a href="store_management.html">매장관리</a></li>
			<li><a href="bigdatatest.html">빅데이터</a></li>
			<li><a href="noticeboard.html">게시판</a></li>
			<li><a href="index_admin.html">Admin Only</a></li>
		</ul>
	</nav>

	<!-- Main -->
	<div id="main">
		<section class="wrapper style1">
			<div class="inner">
				<header class="align-center">
					<h1>Store IoT Device</h1>
					<br>
					<p style="color: darkblue">매장 내 IoT 장비를 설치하여 언제 어디서나 매장 관리를 손쉽게 관리할 수 있는 시스템 입니다.
					</p>
				</header>
			
				
				<!-- Content -->
					<div class="row 200%">
					
						<div class="6u 12u$(medium)">
						
							<div class="row">
								<div class="6u 12u$(small)">
									<br>
									<span class="image fit">
										<img src="${pageContext.servletContext.contextPath}/images/iot_01.jpg" alt="" />
									</span>
								</div>
								
								<div class="6u$ 12u$(small)">
									<br>
									<h4>IoT Device Sensor</h4>
									<ul class="alt">
										<p style="color: chocolate"> 온도, 습도, 미세먼지 센서를 통해 실시간으로 매장 내 실내 온도 및 습도, 미세먼지 수치를 파악 할 수 있습니다. 또한 센서 데이터를 수집, 저장하여 데이터 분석을 할 수 있도록 도와드립니다. 
										</p>
									</ul>
								</div>
							</div>
							
							<br>
							<br>
							<br>
							<div class="row">
								<div class="6u 12u$(small)">
									<br>
									<span class="image fit">
										<img src="${pageContext.servletContext.contextPath}/images/iot_02.jpg" alt="" width="250" height="200" />
									</span>
								</div>
								<br>
								<div class="6u$ 12u$(small)">
									<h4>AWS IoT</h4>
									<ul class="alt">
										<p style="color: chocolate"> AWS(Amazon Web Services)) IoT를 통해 안정적인 서버와 IoT 장비 보안을 제공합니다.</p>
									</ul>
								</div>
							</div>
						</div><!-- 6u 12u$(medium) -->


						<div class="6u 12u$(medium)">
							<div class="row">
								<br>
								<div class="6u 12u$(small)">
									<span class="image fit">
										<img src="${pageContext.servletContext.contextPath}/images/iot_03.jpg" alt="" />
									</span>
								</div>

								<div class="6u$ 12u$(small)">
									<h4>IoT Device Control</h4>
									<ul class="alt">
										<p style="color: chocolate"> 매장간판, 실내조명, 에어컨, 가습기, 환풍기 등 매장 내 다양한 IoT 제품을 통해 언제 어디서나 IoT 기기 제어를 할 수 있도록 도와드립니다.</p>
									</ul>
								</div>
							</div>
							<br>
							<br>
							<br>
							
							<div class="row">
								<br>
								<div class="6u 12u$(small)">
									<span class="image fit">
										<img src="${pageContext.servletContext.contextPath}/images/iot_04.png" alt="" width="200" height="200" />
									</span>
								</div>

								<div class="6u$ 12u$(small)">
									<h4>Messenger ChatBot &amp; IoT</h4>
									<ul class="alt">
										<p style="color: chocolate">IoT 장비제어를 위한 추가적인 App 다운로드 없이 FaceBook 메신저 기반의 챗봇(ChatBot)을 통해 IoT 장비를 제어 할 수 있습니다.</p>
									</ul>
								</div>
							</div>
						</div>
						
					</div>
				</div>
		</section>
	</div>

		<!-- Footer -->
<footer id="myFooter">
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<span class="image"><img src="${pageContext.servletContext.contextPath}/images/bigdata02.jpg" style="width: auto; height: auto; max-width: 170px; max-height: 160px;" alt="" /></span>
			</div>
			<div class="col-sm-2">
				<h5>Get started</h5>
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="loginmain.html">Sign up</a></li>
					<li><a href="error500.html">Downloads</a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h5>About us</h5>
				<ul>
					<li><a href="error404.html">Company Information</a></li>
					<li><a href="https://aws.amazon.com/ko/">Technical Cooperation</a></li>
					<li><a href="error500.html">Reviews</a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h5>Support</h5>
				<ul>
					<li><a href="error404.html">FAQ</a></li>
					<li><a href="mailto:higashi2002kr@gmail.com?Subject=관리자에게 문의">Help desk</a></li>
					<li><a href="noticeboard.html">Community</a></li>
				</ul>
			</div>
			<div class="col-sm-3">
				<div class="social-networks">
					<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
					<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
					<a href="https://github.com/Donny2002" class="github"><i class="fa fa-github"></i></a>
				</div>
				<button type="button" class="btn btn-default">Contact us</button>
			</div>
		</div>
	</div>
	<div class="footer-copyright">
		<p>© 2017 Copyright Bigdata3 </p>
	</div>
</footer>

			<!-- Scripts -->
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>
</body>

</html>