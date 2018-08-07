<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html lang="ko">
	<head>
	<title>Menu Board Mgt</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />
	
	<!-- text fonts -->
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

	<!-- styles -->
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/board.css" />
	
	<!-- Favicon and touch icons -->
	<link rel="icon" href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
	<!-- ace settings handler -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/ace-extra.min.js"></script>
	<style>
		.infobox{
			width: 352px;
			height: 114px;
		}
			.infobox>.infobox-data {
    		font-size: 17px;
    		line-height: 48px;
    		min-width: 180px;
    		padding-left: 80px;
		}
			.infobox>.infobox-data>.infobox-text {
    		font-size: 20px;
		}	
			.infobox>.badge {
    		font-size: 13px;
		}
		
		.modal-dialog {
			position: relative
			width:600px;
			margin:45px auto;
		}
		
		@media screen and (max-width: 480px) {

			button {
				padding: 0;
				width: auto;
			}
		}
		.image {
		border: 0;
		display: inline-block;
		position: relative;
		box-shadow: 0px 0px 0px 7px #fff, 0px 0px 0px 8px rgba(0, 0, 0, 0.1);
	}
		.image.fit {
			display: block;
			margin: 0 0 2em 0;
			width: 100%;
		}
			.image.fit img {
				width: 100%;
			}
		</style>
	</head>

<body>
	
	<!-- Header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- Nav -->
	<jsp:include page="../navi.jsp"></jsp:include>

	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
			<div class="page-header" style="padding-top: 4em;">
				<h1>Big Data More information</h1>
			</div>
				<div class="row">
							<div class="col-xs-12">
								<h3>'${loginBranchMaster.name}' 님의 매장 정보 </h3>
								
								<!-- PAGE CONTENT BEGINS -->				
								<div class="row">
									<div class="space-6"></div>

									<div class="col-sm-7 infobox-container">
										<div class="infobox infobox-orange2">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" data-percent="31" data-size="100" style="font-size: 22px;">
													<span class="percent">31</span>%
												</div>
											</div>

											<div class="infobox-data">
													<span class="infobox-text">삼성점</span>
												<div class="infobox-content">매장의 매출 변동</div>
											</div>
											<div class="stat stat-success">7.2%</div>
										</div>

										<div class="infobox infobox-green">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" data-percent="31" data-size="100" style="font-size: 22px;">
													<span class="percent">31</span>%
												</div>
											</div>

											<div class="infobox-data">
													<span class="infobox-text">서초점</span>
												<div class="infobox-content">매장의 매출 변동</div>
											</div>
											<div class="stat stat-important">6.2%</div>
										</div>

										<div class="infobox infobox-blue2">
											<div class="infobox-progress">
												<div class="easy-pie-chart percentage" data-percent="38" data-size="100" style="font-size: 22px;">
													<span class="percent">38</span>%
												</div>
											</div>

											<div class="infobox-data">
													<span class="infobox-text">잠실점</span>
												<div class="infobox-content">매장의 매출 변동</div>
											</div>
											<div class="stat stat-success">11%</div>
										</div>

										<div class="infobox infobox-orange2">
											<div class="infobox-chart">
												<span class="sparkline" data-values="97.55, 100.17, 100.55, 95.61, 100.04, 96.59, 99.47, 100.68, 99.70, 87.29, 86.68, 100.67"></span>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">평균:97.08</span>
												<div class="infobox-content">월별 매출</div>
											</div>

											<div class="badge badge-success">
												7.2%
												<i class="ace-icon fa fa-arrow-up"></i>
											</div>
										</div>

										<div class="infobox infobox-green">
											<div class="infobox-chart">
												<span class="sparkline" data-values="96.16, 99.73, 99.29, 97.95, 100.93, 96.80, 98.90, 98.65, 102.13, 85.94, 85.84, 99.87"></span>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">평균:96.82</span>
												<div class="infobox-content">월별 매출</div>
											</div>

											<div class="badge badge-important">
												6.2%
												<i class="ace-icon fa fa-arrow-down"></i>
											</div>
										</div>

										<div class="infobox infobox-blue2">
											<div class="infobox-chart">
												<span class="sparkline" data-values="131.52, 132.47, 133.68, 128.97, 133.93, 91.82, 103.29, 111.02, 130.43, 79.67, 92.75, 132.83"></span>
											</div>

											<div class="infobox-data">
												<span class="infobox-data-number">평균:116.87</span>
												<div class="infobox-content">월별 매출</div>
											</div>

											<div class="badge badge-success">
												11%
												<i class="ace-icon fa fa-arrow-up"></i>
											</div>
										</div>

										<div class="space-6"></div>

										<a href="#my-modal" class="infobox infobox-blue infobox infobox-dark" data-toggle="modal">
											<div class="infobox-chart">
												<span class="sparkline" data-values="97.08, 96.82, 116.87"></span>
											</div>

											<div class="infobox-data">
												<div class="infobox-content">매장비교 상세</div>
												<div class="infobox-content">총 평균:103.59</div>
											</div>
										</a>

									</div>

									<div class="vspace-12-sm"></div>

									<div class="col-sm-5">
										<div class="widget-box">
											<div class="widget-header widget-header-flat widget-header-small">
												<h5 class="widget-title">
													<i class="ace-icon fa fa-pie-chart"></i>
													매장별 비교 분석 Data
												</h5>

												<div class="widget-toolbar no-border">
													<div class="inline dropdown-hover">
														<button class="btn btn-minier btn-primary">
															This Week
															<i class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
														</button>

														<ul class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
															<li class="active">
																<a href="#" class="blue">
																	<i class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
																	This Week
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																	Last Week
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																	This Month
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
																	Last Month
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div id="piechart-placeholder"></div>

													<div class="hr hr8 hr-double"></div>

													<div class="clearfix">
														<div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-cutlery fa-2x red2"></i>
																&nbsp; 삼성점
															</span>
															<h4 class="bigger pull-right">97.08</h4>
														</div>

														<div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-cutlery fa-2x green"></i>
																&nbsp; 서초점
															</span>
															<h4 class="bigger pull-right">96.82</h4>
														</div>

														<div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-cutlery fa-2x blue"></i>
																&nbsp; 잠실점
															</span>
															<h4 class="bigger pull-right">116.87</h4>
														</div>
													</div>
												</div><!-- /.widget-main -->
											</div><!-- /.widget-body -->
										</div><!-- /.widget-box -->
									</div><!-- /.col -->
								</div><!-- /.row -->

								<div class="hr hr32 hr-dotted"></div>

								<div class="row">
									<div class="col-xs-12">
										<div class="widget-box transparent">
											<div class="widget-header widget-header-flat">
												<h4 class="widget-title lighter">
													<i class="ace-icon fa fa-signal"></i>
													Sale Stats
												</h4>

												<div class="widget-toolbar">
													<a href="#" data-action="collapse">
														<i class="ace-icon fa fa-chevron-up"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-4">
													<div class="image fit">
												 <img class="img-thumbnail" id="output" alt="store sales image" items="" var="path" src="${pageContext.servletContext.contextPath}/images/%EC%9B%94%EB%B3%84%EA%B0%80%EA%B2%8C%EB%A7%A4%EC%B6%9C%EB%B9%84%EA%B5%902.png" style="height: 420px;"/> 
												</div>
												</div><!-- /.widget-main -->
											</div><!-- /.widget-body -->
										</div><!-- /.widget-box -->
									</div><!-- /.col -->
								</div><!-- /.row -->

								<div class="hr hr32 hr-dotted"></div>
								
								<div class="row">
									<div class="col-xs-12">
										<div class="widget-box transparent">
											<div class="widget-header widget-header-flat">
												<h4 class="widget-title lighter">
													<i class="ace-icon fa fa-area-chart"></i>
													Sales Comparison
												</h4>

												<div class="widget-toolbar">
													<a href="#" data-action="collapse">
														<i class="ace-icon fa fa-chevron-up"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-4">
													<div class="image fit">
												 <img class="img-thumbnail" id="output2" alt="store sales image2" items="" var="path" src="${pageContext.servletContext.contextPath}/images/%EC%9B%94%EB%B3%84%EA%B0%80%EA%B2%8C%EB%A7%A4%EC%B6%9C%EB%B9%84%EA%B5%903.png" style="height: 420px;"/> 
												</div>
												</div><!-- /.widget-main -->
											</div><!-- /.widget-body -->
										</div><!-- /.widget-box -->
									</div><!-- /.col -->
								</div><!-- /.row -->
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
			</div>
		</div>
	</div>
		
				<!-- Modal -->
				<div class="container">
  				<div id="my-modal" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h3 class="smaller lighter blue no-margin">소유 매장의 매출 상세 비교</h3>
											</div>

											<div class="modal-body">
												<img class="image fit" id="output-temp" alt="store sales image" src="${pageContext.servletContext.contextPath}/images/%EA%B0%80%EA%B2%8C%EB%B3%84%EB%A7%A4%EC%B6%9C%EB%B9%84%EA%B5%901.png" />
											</div>

											<div class="modal-footer">
												<button class="btn btn-sm btn-danger pull-right" data-dismiss="modal">
													<i class="ace-icon fa fa-times"></i>
													Close
												</button>
											</div>
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div>

								<div id="aside-inside-modal" class="modal" data-placement="bottom" data-background="true" data-backdrop="false" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-body">
												<div class="row">
													<div class="col-xs-12 white">
														<h4 class="lighter no-margin">매장 매출 총합</h4>
														<p align="center">귀하의 매장 매출 총합은 <span id="total sales">310.77</span> 입니다.</p>
														<br />
													</div>
												</div>
											</div>
										</div><!-- /.modal-content -->

										<button class="btn btn-default btn-app btn-xs ace-settings-btn aside-trigger" data-target="#aside-inside-modal" data-toggle="modal" type="button">
											<i data-icon2="fa-arrow-down" data-icon1="fa-arrow-up" class="ace-icon fa fa-arrow-up bigger-110 icon-only"></i>
										</button>
									</div><!-- /.modal-dialog -->
								</div>
					</div>	
						
<!-- Footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
	</script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>
		
	<!-- page specific plugin scripts -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.easypiechart.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.sparkline.index.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.flot.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.flot.pie.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.flot.resize.min.js"></script>

	<!-- ace scripts -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>
		
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/skel.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/main.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/8),
						animate: ace.vars['old_ie'] ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html',
									 {
										tagValuesAttribute:'data-values',
										type: 'bar',
										barColor: barColor ,
										chartRangeMin:$(this).data('min') || 0
									 });
				});
				
			  //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			  //but sometimes it brings up errors with normal resize event handlers
				
			  $.resize.throttleWindow = false;
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'340px'});
			  var data = [
				{ label: "서초점",  data: 31.1, color: "#68BC31"},
				{ label: "잠실점",  data: 37.6, color: "#2091CF"},
				{ label: "삼성점",  data: 31.3, color: "#F79263"}
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			  //pie chart tooltip example
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				/////////////////////////////////////
				$(document).one('ajaxloadstart.page', function(e) {
					$tooltip.remove();
				});
			
			
			
				/*
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'300px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
				*/
			})
	</script>
	<script type="text/javascript">
			jQuery(function($) {
				$('.modal.aside').ace_aside();
				
				$('#aside-inside-modal').addClass('aside').ace_aside({container: '#my-modal > .modal-dialog'});
				
				//$('#top-menu').modal('show')
				
				$(document).one('ajaxloadstart.page', function(e) {
					//in ajax mode, remove before leaving page
					$('.modal.aside').remove();
					$(window).off('.aside')
				});
				
				//make content sliders resizable using jQuery UI (you should include jquery ui files)
				//$('#right-menu > .modal-dialog').resizable({handles: "w", grid: [ 20, 0 ], minWidth: 200, maxWidth: 600});
			})
	</script>
	<script>
		function logout() {
			var con = confirm("접속을 종료하시겠습니까?");
			if(con == true) {
				location.href="../ajax/logout.jsp" // jsp 호출 후, session.removeAttribute("username); response.sendRedirect("세션 제거후 보여줄 페이지");
			} else{}
		}
	</script>
</body>
</html>
