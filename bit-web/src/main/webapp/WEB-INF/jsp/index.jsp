<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
	Urban by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>Bigdata-IoT ver.3</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/main.css" />

<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
</head>

<body>

	<!-- Header -->
	<jsp:include page="./headeralt.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="./navi.jsp"></jsp:include>

	<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<header>
						<h1>디지털 메뉴보드 클라우드 서비스</h1>
						<p>Cloud AWS IoT systems utilizing Bigdata</p>
					</header>
					<a href="#main" class="button big scrolly">More Infomation</a>
				</div>
			</section>

		<!-- Main -->
			<div id="main">

				<!-- Section -->
					<section class="wrapper style1">
						<div class="inner">
							<!-- 2 Columns -->
								<div class="flex flex-2">
									<div class="col col1">
										<div class="image round fit">
											<a href="${pageContext.request.contextPath}awsiot/intro" class="link"><img src="${pageContext.servletContext.contextPath}/images/bigdata02.jpg" alt="" /></a>
										</div>
									</div>
									<div class="col col2">
										<h3>IoT(Internet of Things) - 사물인터넷 서비스</h3>
										<p>사물인터넷 서비스(IoT Service)란 어떤 사물에 네트워크를 연결하여 실시간 데이터 정보를 주고 받으며, 사용자의 시간과 장소의 구애를 받지 않고 언제든지 사물에 대한 제어를 할 수 있는 서비스 입니다.
										 4차 산업혁명에 맞춰 등장한 IoT 서비스는 사용자의 편의를 도모하며, IoT 기기제어를 쉽게 할 수 있도록 도와드립니다.</p>
										<p>IoT 센서를 통한 실시간 데이터 수치를 파악할 수 있으며, 데이터 수집, 저장을 통해 추후 지점별 데이터 분석을 할 수 있도록 제공합니다. 또한 매장간판, 실내조명, 에어컨, 가습기, 환풍기 등 다양한 IoT 제품을 통해 언제 어디서나 사용자(점주)분들께 매장 내 IoT 기기 제어를 할 수 있도록 도와드립니다.</p>
										<a href="${pageContext.request.contextPath}awsiot/intro" class="button">자세히 보기</a>
									</div>
								</div>
						</div>
					</section>

				<!-- Section -->
					<section class="wrapper style2">
						<div class="inner">
							<div class="flex flex-2">
								<div class="col col2">
									<h3>Bigdata의 분석 및 서비스 활용</h3>
									<p>일반적인 Silo 형태의 분석 업무 프로세스를 Unity 형태의 흐름으로 개선합니다.<br>
											즉, 데이터의 정제, 분석, 보고 프로세스를 온라인 웹으로 통합하여 제공합니다.</p>
									<p>최소 2.5G 이상의 대용량 데이터 및 실내 공기질 데이터를 웹 상에서 분석하여 유저분들에게 대리점 관리 인사이트를 제공합니다.<br>
										데이터 분석가가 분석한 보고서는 웹 브라우저를 통해 유저(점주님)분들에게 공유되고 관리됩니다. </p>
									<a href="${pageContext.request.contextPath}bigdata/intro" class="button">자세히 보기</a>
								</div>
								<div class="col col1 first">
									<div class="image round fit">
										<a href="${pageContext.request.contextPath}bigdata/intro" class="link"><img src="${pageContext.servletContext.contextPath}/images/bigdata01.jpg" alt="" /></a>
									</div>
								</div>
							</div>
						</div>
					</section>

				<!-- Section -->
					<section class="wrapper style1">
						<div class="inner">
							<header class="align-center">
								<h2>서비스 적용 매장 안내 및 기타 서비스</h2>
								<p>저희 서비스를 활용하고 계신 매장을 둘러 보실 수 있습니다. 챗봇 서비스 기능에 대해 알아보세요.</p>
							</header>
							<div class="flex flex-3">
								<div class="col align-center">
									<div class="image round fit">
										<img src="${pageContext.servletContext.contextPath}/images/restaurants_chicago.jpg" alt="" />
									</div>
									<p>현재 저희 서비스를 적용한 매장을 확인 하실 수 있습니다. 비용절감과 편의성을 향상에 도움이 됩니다. 특히 프렌차이즈 업계에 적합합니다. </p>
									<a href="${pageContext.request.contextPath}/storeinfo" class="button">자세히 보기</a>
								</div>
								<div class="col align-center">
									<div class="image round fit">
										<img src="${pageContext.servletContext.contextPath}/images/Chatbot-facebook.jpg" alt="" />
									</div>
									<p>페이스북 챗봇을 이용하므로 어떤 스마트폰 디바이스 환경에서도 편리하게 매장정보를 확인하고 제어할 수 있습니다. </p>
									<a href="chatbot" class="button">자세히 보기</a>
								</div>
								<div class="col align-center">
									<div class="image round fit">
										<img src="${pageContext.servletContext.contextPath}/images/faq2.jpg" alt="" />
									</div>
									<p>서비스 관련 문의사항, 비용관련 문의사항, 기타 여러 문의사항이 있으시다면 연락주세요. 최대한 빠른 답변 드리도록 노력 하겠습니다. </p>
									<a href="error404" class="button">자세히 보기</a>
								</div>
							</div>
						</div>
					</section>

			</div>

	<!-- Footer -->
	<jsp:include page="./footer2.jsp"></jsp:include>

	<!-- Scripts -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>

</body>
</html>