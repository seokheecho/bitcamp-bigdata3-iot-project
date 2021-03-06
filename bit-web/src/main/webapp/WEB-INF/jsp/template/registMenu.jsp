<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu Mgt Admin</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/jquery-ui.custom.min.css" />

<!-- text fonts -->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!-- Favicon and touch icons -->
<link rel="icon" href="${pageContext.servletContext.contextPath}/ico/home_iot.png">

<style>
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

<!-- ace settings handler -->
<script src="${pageContext.servletContext.contextPath}/assets/js/ace-extra.min.js"></script>
</head>

<body class="no-skin">
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<div class="navbar-header pull-left">
				<a href="index_admin.html" class="navbar-brand"> <small>
						<i class="fa fa-leaf"></i> Bigdata3 Admin
				</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">
					<li class="grey dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-tasks"></i> <span class="badge badge-grey">4</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="ace-icon fa fa-check"></i>
								4 Tasks to complete</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">Software Update</span> <span
													class="pull-right">65%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 65%" class="progress-bar"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">Hardware Upgrade</span> <span
													class="pull-right">35%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 35%"
													class="progress-bar progress-bar-danger"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">Unit Testing</span> <span
													class="pull-right">15%</span>
											</div>

											<div class="progress progress-mini">
												<div style="width: 15%"
													class="progress-bar progress-bar-warning"></div>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left">Bug Fixes</span> <span
													class="pull-right">90%</span>
											</div>

											<div class="progress progress-mini progress-striped active">
												<div style="width: 90%"
													class="progress-bar progress-bar-success"></div>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="#"> See tasks with
									details <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="purple dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-bell icon-animated-bell"></i> <span
							class="badge badge-important">8</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-exclamation-triangle"></i> 8 Notifications
							</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar navbar-pink">
									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-pink fa fa-comment"></i> New
													Comments
												</span> <span class="pull-right badge badge-info">+12</span>
											</div>
									</a></li>

									<li><a href="#"> <i
											class="btn btn-xs btn-primary fa fa-user"></i> Minkuk just
											signed up as an editor ...
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
													New Orders
												</span> <span class="pull-right badge badge-success">+8</span>
											</div>
									</a></li>

									<li><a href="#">
											<div class="clearfix">
												<span class="pull-left"> <i
													class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
													Followers
												</span> <span class="pull-right badge badge-info">+11</span>
											</div>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="#"> See all
									notifications <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="green dropdown-modal"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">5</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-envelope-o"></i> 5 Messages</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar.png" class="msg-photo"
											alt="Alex's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">민국:</span> 어제도
													하얗게 불살났어 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>a moment
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar3.png" class="msg-photo"
											alt="Susan's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">연주:</span> 챗봇
													기능에 추가 업데이트가 필요할 것 같아요 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>20 minutes
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar4.png" class="msg-photo"
											alt="Bob's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">수빈:</span> 관리자
													페이지에 새로운 기능을 추가했어요 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>3:15 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar2.png" class="msg-photo"
											alt="Kate's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">종학:</span> 빅데이터
													분석에 따른 시각화 세부사항 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>1:33 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="images/avatars/avatar5.png" class="msg-photo"
											alt="Fred's Avatar" /> <span class="msg-body"> <span
												class="msg-title"> <span class="blue">동석:</span> 어제도
													할게 많았지만 오늘은 더 많다 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>10:09 am</span>
											</span>
										</span>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="inbox.html"> See
									all messages <i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<li class="light-blue dropdown-modal"><a
						data-toggle="dropdown" href="#" class="dropdown-toggle"> <img
							class="nav-user-photo" src="images/avatars/master.png"
							alt="Jason's Photo" /> <span class="user-info"> <small>Welcome,</small>
								Master
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="ace-icon fa fa-cog"></i>
									Settings
							</a></li>

							<li><a href="profile.html"> <i
									class="ace-icon fa fa-user"></i> Profile
							</a></li>

							<li class="divider"></li>

							<li><a href="#"> <i class="ace-icon fa fa-power-off"></i>
									Logout
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.navbar-container -->
	</div>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<div id="sidebar"
			class="sidebar                  responsive                    ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {
				}
			</script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<a href="index.html" style="color: floralwhite"> <i
							class="ace-icon fa fa-desktop"></i></a>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<li class=""><a href="index_admin.html"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
							Dashboard </span>
				</a> <b class="arrow"></b></li>

				<li class="active open"><a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-bar-chart-o"></i> <span
						class="menu-text"> Board Mgt </span> <b
						class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class="active"><a href="registmenu.html"> <i
								class="menu-icon fa fa-caret-right"></i> Menu Board
						</a> <b class="arrow"></b></li>

						<li class=""><a href="registevent.html"> <i
								class="menu-icon fa fa-caret-right"></i> Event Board
						</a> <b class="arrow"></b></li>

						<li class=""><a href="treeview.html"> <i
								class="menu-icon fa fa-caret-right"></i> Treeview
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-pencil-square-o"></i> <span
						class="menu-text"> Stores </span> <b
						class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="admin-form-detail.html"> <i
								class="menu-icon fa fa-caret-right"></i> Store Infomation
						</a> <b class="arrow"></b></li>

						<li class=""><a href="store_list.html"> <i
								class="menu-icon fa fa-caret-right"></i> Store List
						</a> <b class="arrow"></b></li>

						<li class=""><a href="wysiwyg.html"> <i
								class="menu-icon fa fa-caret-right"></i> Wysiwyg &amp; Markdown
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="calendar.html"> <i
						class="menu-icon fa fa-calendar"></i> <span class="menu-text">
							Calendar <span class="badge badge-transparent tooltip-error"
							title="2 Important Events"> <i
								class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
						</span>
					</span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="gallery.html"> <i
						class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
							Gallery </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-file-o"></i> <span class="menu-text">
							Other Pages <span class="badge badge-primary">5</span>
					</span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="faq.html"> <i
								class="menu-icon fa fa-caret-right"></i> FAQ
						</a> <b class="arrow"></b></li>

						<li class=""><a href="error-404.html"> <i
								class="menu-icon fa fa-caret-right"></i> Error 404
						</a> <b class="arrow"></b></li>

						<li class=""><a href="error-500.html"> <i
								class="menu-icon fa fa-caret-right"></i> Error 500
						</a> <b class="arrow"></b></li>

						<li class=""><a href="blank.html"> <i
								class="menu-icon fa fa-caret-right"></i> Blank Page
						</a> <b class="arrow"></b></li>
					</ul></li>
			</ul>
			<!-- /.nav-list -->

			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
						</li>
						<li><a href="#">Stores</a></li>
						<li class="active">Store Infomation</li>
					</ul>
					<!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- /.nav-search -->
				</div>

				<div class="page-content">
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
							id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-130"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left">

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-rtl" autocomplete="off" /> <label
										class="lbl" for="ace-settings-rtl"> Right To Left
										(rtl)</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox"
										class="ace ace-checkbox-2 ace-save-state"
										id="ace-settings-add-container" autocomplete="off" /> <label
										class="lbl" for="ace-settings-add-container"> Inside <b>.container</b>
									</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-hover" autocomplete="off" /> <label
										class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-compact" autocomplete="off" /> <label
										class="lbl" for="ace-settings-compact"> Compact
										Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-highlight" autocomplete="off" /> <label
										class="lbl" for="ace-settings-highlight"> Alt. Active
										Item</label>
								</div>
							</div>
							<!-- /.pull-left -->
						</div>
						<!-- /.ace-settings-box -->
					</div>
					<!-- /.ace-settings-container -->


					<!-- 실제적인 내용은 여기부터 -->
					<div class="page-header">
						<h1>
							디지털 보드 관리 <small> <i
								class="ace-icon fa fa-angle-double-right"></i> 메뉴 보드 상세 내용
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<form class="form-horizontal" role="form" action="update.do"
								method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="branchSelect"> 매장명 </label>

									<div class="col-sm-5">
										<input type="text" id="branchSelect" name="bno"
											class="col-xs-12" value="${branch.name}" placeholder="매장명" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="menuWindow"> 메뉴 템플릿</label>

									<div class="col-sm-5">
										<input type="text" id="menuWindow" name="etpno"
											class="col-xs-12" value="${template.벨류값}"
											placeholder="메뉴 템플릿" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right"
										for="wineventTitle"> 메뉴보드 제목</label>

									<div class="col-sm-5">
										<input type="text" id="winmenuTitle" name="winmenuTitle"
											class="col-xs-12" value="" placeholder="메뉴보드 제목" />
									</div>
								</div>

								<div class="space-4"></div>

								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">
										상세 메뉴정보</label>
								</div>


								<div class="accordion-style1 panel-group" id="accordian">
									<div class="panel panel-defult">
										<!-- forEach? -->
										<div class="panel-heading">
											<h4 class="panel-title">

												<a class="accordion-toggle" data-toggle="collapse"
													data-parent="#accordion" href="#collapseOne"> <i
													class="ace-icon fa fa-angle-down bigger-110"
													data-icon-hide="ace-icon fa fa-angle-down"
													data-icon-show="ace-icon fa fa-angle-right"></i> &nbsp;메뉴
													#1
												</a>
											</h4>
										</div>

										<!-- 첫 인덱스는 반드시 class명 뒤에 in 필요! 각 클래스별 id값 다르니 주의!(id="collapseOne") -->
										<div class="panel-collapse collapse in" id="collapseOne">
											<div class="panel-body">
												<div class="widget-main">
													<div class="row">
														<div class="col-xs-12 col-sm-6">
															<div class="image fit">
																<img class="img-thumbnail" id="output1"
																	alt="menuboard #1 image" items="" var="path" src="" />
															</div>
														</div>

														<div class="col-xs-12 col-sm-6">
															<div class="form-group">
																<label for="menuTitle"> 메뉴명</label>
																<div>
																	<input type="text" class="col-xs-10" name="menu_title"
																		id="menuTitle" value="" placeholder="메뉴명 출력" />
																</div>
															</div>

															<div class="form-group">
																<label for="menuTitle"> 가격</label>
																<div>
																	<input type="text" class="col-xs-10" name="menu_price"
																		id="menuPrice" value="" placeholder="메뉴 가격 출력" />
																</div>
															</div>

															<div class="form-group">
																<label for="menuDivision"> 메뉴분류</label>
																<div>
																	<input type="text" class="col-xs-10"
																		name="menuDivision" id="menuDivision" value=""
																		placeholder="메뉴분류 출력" />
																</div>
															</div>

															<div class="form-group">
																<label for="menuEtc"> 기타사항</label>
																<div>
																	<input type="text" class="col-xs-10" id="menuEtc"
																		name="menuEtc"
																		placeholder="기타사항 출력 예) 원산지, 칼로리, 외국어표기 등" />
																</div>
															</div>
														</div>
													</div>
													<!-- row 끝-->

												</div>
												<!-- widget-main 끝-->
											</div>
											<!-- panel-body 끝-->
										</div>
										<!-- panel-collapse collapse in끝-->
									</div>
									<!-- panel panel-defult 끝-->


									<div class="panel panel-defult">
										<!-- forEach? -->
										<div class="panel-heading">
											<h4 class="panel-title">

												<a class="accordion-toggle collapsed" data-toggle="collapse"
													data-parent="#accordion" href="#collapseTwo"> <i
													class="ace-icon fa fa-angle-down bigger-110"
													data-icon-hide="ace-icon fa fa-angle-down"
													data-icon-show="ace-icon fa fa-angle-right"></i>&nbsp;메뉴 #2
												</a>
											</h4>
										</div>
										<!-- 두번째 인덱스부터는 class명 뒤에 in 필요없음! 각 클래스별 id값 다르니 주의!(id="collapseTwo") -->
										<div class="panel-collapse collapse" id="collapseTwo">
											<div class="panel-body">
												<div class="widget-main">
													<div class="row">
														<div class="col-xs-12 col-sm-6">
															<div class="image fit">
																<img class="img-thumbnail" id="output2"
																	alt="menuboard #2 image" items="" var="path" src="" />
															</div>
														</div>

														<div class="col-xs-12 col-sm-6">
															<div class="form-group">
																<label for="menuTitle"> 메뉴명</label>
																<div>
																	<input type="text" class="col-xs-10" name="menu_title"
																		id="menuTitle" value="" placeholder="메뉴명 출력" />
																</div>
															</div>

															<div class="form-group">
																<label for="menuTitle"> 가격</label>
																<div>
																	<input type="text" class="col-xs-10" name="menu_price"
																		id="menuPrice" value="" placeholder="메뉴 가격 출력" />
																</div>
															</div>

															<div class="form-group">
																<label for="menuDivision"> 메뉴분류</label>
																<div>
																	<input type="text" class="col-xs-10"
																		name="menuDivision" id="menuDivision" value=""
																		placeholder="메뉴분류 출력" />
																</div>
															</div>

															<div class="form-group">
																<label for="menuEtc"> 기타사항</label>
																<div>
																	<input type="text" class="col-xs-10" id="menuEtc"
																		name="menuEtc"
																		placeholder="기타사항 출력 예) 원산지, 칼로리, 외국어표기 등" />
																</div>
															</div>
														</div>
													</div>
													<!-- row 끝-->

												</div>
												<!-- widget-main 끝-->
											</div>
											<!-- panel-body 끝-->
										</div>
										<!-- panel-collapse collapse끝-->
									</div>
									<!-- panel panel-defult 끝-->
								</div>
								<!-- accordion-style1 panel-group 끝-->


								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-9">
										<a href="#" type="button" class="btn btn-info" role="button">
											<i class="ace-icon fa fa-table bigger-110"></i> 목록
										</a> &nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i> 리셋
										</button>

										&nbsp; &nbsp;
										<button class="btn btn-danger" type="button"
											onclick="doDelete()">
											<i class="ace-icon fa fa-exclamation-circle bigger-110"></i>
											삭제
										</button>

									</div>
								</div>
							</form>

						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<div class="footer">
			<div class="footer-inner">
				<div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">Bigdata3</span>
						Administrator &copy; 2017
					</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
							<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
					</a> <a href="#"> <i
							class="ace-icon fa fa-rss-square orange bigger-150"></i>
					</a>
					</span>
				</div>
			</div>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<script>
		// 이미지 파일 보여주기
		var loadFile = function(event) {
			var output = document.getElementById('output');
			output.src = URL.createObjectURL(event.target.files[0]);
		};

		// 삭제, 목록 버튼    
		function doDelete() {
			location.href = 'delete.do?no=${branch.no}'
		}

		function doList() {
			location.href = 'list.do'
		}
	</script>
	<!--[if !IE]> -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="${pageContext.servletContext.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
          <script src="${pageContext.servletContext.contextPath}/assets/js/excanvas.min.js"></script>
        <![endif]-->
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/autosize.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery.inputlimiter.min.js"></script>

	<!-- ace scripts -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {

			$('[data-rel=tooltip]').tooltip({
				container : 'body'
			});
			$('[data-rel=popover]').popover({
				container : 'body'
			});

			autosize($('textarea[class*=autosize]'));

			$('textarea.limited').inputlimiter({
				remText : '%n character%s remaining...',
				limitText : 'max allowed : %n.'
			});

			//dynamically change allowed formats by changing allowExt && allowMime function
			$('#id-file-format').removeAttr('checked').on(
					'change',
					function() {
						var whitelist_ext, whitelist_mime;
						var btn_choose
						var no_icon
						if (this.checked) {
							btn_choose = "Drop images here or click to choose";
							no_icon = "ace-icon fa fa-picture-o";

							whitelist_ext = [ "jpeg", "jpg", "png", "gif",
									"bmp" ];
							whitelist_mime = [ "image/jpg", "image/jpeg",
									"image/png", "image/gif", "image/bmp" ];
						} else {
							btn_choose = "Drop files here or click to choose";
							no_icon = "ace-icon fa fa-cloud-upload";

							whitelist_ext = null;//all extensions are acceptable
							whitelist_mime = null;//all mimes are acceptable
						}
						var file_input = $('#id-input-file-3');
						file_input.ace_file_input('update_settings', {
							'btn_choose' : btn_choose,
							'no_icon' : no_icon,
							'allowExt' : whitelist_ext,
							'allowMime' : whitelist_mime
						})
						file_input.ace_file_input('reset_input');

						file_input.off('file.error.ace').on('file.error.ace',
								function(e, info) {
									//console.log(info.file_count);//number of selected files
									//console.log(info.invalid_count);//number of invalid files
									//console.log(info.error_list);//a list of errors in the following format

									//info.error_count['ext']
									//info.error_count['mime']
									//info.error_count['size']

									//info.error_list['ext']  = [list of file names with invalid extension]
									//info.error_list['mime'] = [list of file names with invalid mimetype]
									//info.error_list['size'] = [list of file names with invalid size]

									/**
									if( !info.dropped ) {
									    //perhapse reset file field if files have been selected, and there are invalid files among them
									    //when files are dropped, only valid files will be added to our file array
									    e.preventDefault();//it will rest input
									}
									 */

									//if files have been selected (not dropped), you can choose to reset input
									//because browser keeps all selected files anyway and this cannot be changed
									//we can only reset file field to become empty again
									//on any case you still should check files with your server side script
									//because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
								});

						/**
						file_input
						.off('file.preview.ace')
						.on('file.preview.ace', function(e, info) {
						    console.log(info.file.width);
						    console.log(info.file.height);
						    e.preventDefault();//to prevent preview
						});
						 */

					});

			$(document)
					.one(
							'ajaxloadstart.page',
							function(e) {
								autosize.destroy('textarea[class*=autosize]')

								$('.limiterBox,.autosizejs').remove();
								$(
										'.daterangepicker.dropdown-menu,.colorpicker.dropdown-menu,.bootstrap-datetimepicker-widget.dropdown-menu')
										.remove();
							});

		});
	</script>
</body>
</html>