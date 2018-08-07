<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Store Form Admin</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/chosen.min.css" />

<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">

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
<script
	src="${pageContext.servletContext.contextPath}/assets/js/ace-extra.min.js"></script>
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
						<i class="fa fa-leaf"></i> Donny Admin
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
											src="${pageContext.servletContext.contextPath}/images/avatars/avatar.png"
											class="msg-photo" alt="Alex's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">민국:</span> 어제도 하얗게 불살났어 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>a moment
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="${pageContext.servletContext.contextPath}/images/avatars/avatar3.png"
											class="msg-photo" alt="Susan's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">연주:</span> 챗봇 기능에 추가 업데이트가 필요할 것 같아요 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>20 minutes
														ago</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="${pageContext.servletContext.contextPath}/images/avatars/avatar4.png"
											class="msg-photo" alt="Bob's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">수빈:</span> 관리자 페이지에 새로운 기능을 추가했어요 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>3:15 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="${pageContext.servletContext.contextPath}/images/avatars/avatar2.png"
											class="msg-photo" alt="Kate's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">종학:</span> 빅데이터 분석에 따른 시각화 세부사항 ...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>1:33 pm</span>
											</span>
										</span>
									</a></li>

									<li><a href="#" class="clearfix"> <img
											src="${pageContext.servletContext.contextPath}/images/avatars/avatar5.png"
											class="msg-photo" alt="Fred's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">동석:</span> 어제도 할게 많았지만 오늘은 더 많다 ...
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
							class="nav-user-photo"
							src="${pageContext.servletContext.contextPath}/images/avatars/master.png"
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
				<li class=""><a href="main"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
							Dashboard </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-bar-chart-o"></i> <span class="menu-text">
							Board Mgt </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="../menuboard/confirm"> <i
								class="menu-icon fa fa-caret-right"></i> Menu Confirm
						</a> <b class="arrow"></b></li>

						<li class=""><a href="../menuboard/new"> <i
								class="menu-icon fa fa-caret-right"></i> Menu Template
						</a> <b class="arrow"></b></li>

						<li class="active open"><a href="../category/list"> <i
								class="menu-icon fa fa-caret-right"></i> Menu category
						</a> <b class="arrow"></b></li>

						<li class=""><a href="../menu/list"> <i
								class="menu-icon fa fa-caret-right"></i> Menu list
						</a> <b class="arrow"></b></li>

						<li class=""><a href="eventlist"> <i
								class="menu-icon fa fa-caret-right"></i> Event Board
						</a> <b class="arrow"></b></li>

						<li class=""><a href="../board/list"> <i
								class="menu-icon fa fa-caret-right"></i> Board
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

						<li class=""><a href="branchlist"> <i
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
								<li><i class="ace-icon fa fa-home home-icon"></i> <a
									href="#">Home</a></li>
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
												class="lbl" for="ace-settings-add-container"> Inside
												<b>.container</b>
											</label>
										</div>

										<div class="ace-settings-item">
											<input type="checkbox" class="ace ace-checkbox-2"
												id="ace-settings-hover" autocomplete="off" /> <label
												class="lbl" for="ace-settings-hover"> Submenu on
												Hover</label>
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
												class="lbl" for="ace-settings-highlight"> Alt.
												Active Item</label>
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
									메뉴 정보 <small> <i
										class="ace-icon fa fa-angle-double-right"></i> 상세 정보 입력
									</small>
								</h1>
							</div>
							<!-- /.page-header -->

							<div class="row">
								<div class="col-xs-12">
									<!-- PAGE CONTENT BEGINS -->
									<form class="form-horizontal" role="form" action="insert"
										method="post" enctype="multipart/form-data">
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"
												for="form-field-1-1"> 분류 </label>

											<div class="col-sm-9">
												<select class=" col-xs-10 col-sm-6" id="menuType"
													name="menuType" data-placeholder="메뉴분류">
													<option name="menuType" value="none">- 메뉴분류 선택 -</option>
													<c:forEach items="${list}" var="item">
														<option name="menuType" value="${item.mCategoryNo}">${item.category}</option>
													</c:forEach>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"
												for="form-field-1-2"> 메뉴이름 </label>

											<div class="col-sm-9">
												<input type="text" name="menuName" id="form-field-1-2"
													class="col-xs-10 col-sm-6" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"
												for="form-field-1-3"> 메뉴가격 </label>

											<div class="col-sm-9">
												<input type="text" name="menuPrice" id="form-field-1-3"
													class="col-xs-10 col-sm-6" />
											</div>
										</div>

										<div class="space-4"></div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"
												for="form-field-icon-1"> 메뉴 설명 </label>

											<div class="col-sm-9">
												<span class="input-icon"> <input type="text"
													name="menuContent" id="form-field-icon-1" /> <i
													class="ace-icon fa fa-leaf blue"></i>
												</span>
											</div>
										</div>

										<div class="space-4"></div>

										<div class="widget-box">
											<div class="widget-header">
												<h4 class="widget-title"
													style="font-size: 1.2em; color: #669FC7;">이미지 넣기</h4>

												<div class="widget-toolbar">
													<a href="#" data-action="collapse"> <i
														class="ace-icon fa fa-chevron-up"></i>
													</a> <a href="#" data-action="close"> <i
														class="ace-icon fa fa-times"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													<div class="form-group">
														<div class="col-xs-12">
															<input type="file" name="photo" id="id-input-file-3"
																onchange="loadFile(event)">
														</div>
													</div>

													<label> <input type="checkbox" name="file-format"
														id="id-file-format" class="ace" /> <span class="lbl">
															이미지 파일만 허용</span>
													</label>
												</div>
											</div>
										</div>
										<div class="space-4"></div>
										<div class="clearfix form-actions">
											<div class="col-md-offset-3 col-md-9">
												<button class="btn btn-info" type="submit">
													<i class="ace-icon fa fa-hand-o-right bigger-110"></i> 적용
												</button>

												&nbsp; &nbsp;
												<button class="btn" type="reset">
													<i class="ace-icon fa fa-undo bigger-110"></i> 리셋
												</button>

												&nbsp; &nbsp;
												<button class="btn btn-danger" type="button"
													onclick="doDelete()">
													<i class="ace-icon fa fa-exclamation-circle bigger-110"></i>
													삭제
												</button>

												&nbsp; &nbsp;
												<button class="btn btn-success" type="button"
													onclick="doList()">
													<i class="ace-icon fa fa-folder-open-o bigger-110"></i> 목록
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
							<span class="bigger-120"> <span class="blue bolder">Ace</span>
								Application &copy; 2013-2014
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
			<script
				src="${pageContext.servletContext.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

			<!-- <![endif]-->

			<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->

			<script
				src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>

			<!-- page specific plugin scripts -->

			<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
			<script
				src="${pageContext.servletContext.contextPath}/assets/js/jquery-ui.custom.min.js"></script>

			<script
				src="${pageContext.servletContext.contextPath}/assets/js/chosen.jquery.min.js"></script>
			<script
				src="${pageContext.servletContext.contextPath}/assets/js/jquery.knob.min.js"></script>
			<script
				src="${pageContext.servletContext.contextPath}/assets/js/autosize.min.js"></script>
			<script
				src="${pageContext.servletContext.contextPath}/assets/js/jquery.inputlimiter.min.js"></script>
			<script
				src="${pageContext.servletContext.contextPath}/assets/js/jquery.maskedinput.min.js"></script>


			<!-- ace scripts -->
			<script
				src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
			<script
				src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>

			<!-- inline scripts related to this page -->
			<script type="text/javascript">
				jQuery(function($) {
					$('#id-disable-check').on('click', function() {
						var inp = $('#form-input-readonly').get(0);
						if (inp.hasAttribute('disabled')) {
							inp.setAttribute('readonly', 'true');
							inp.removeAttribute('disabled');
							inp.value = "This text field is readonly!";
						} else {
							inp.setAttribute('disabled', 'disabled');
							inp.removeAttribute('readonly');
							inp.value = "This text field is disabled!";
						}
					});

					if (!ace.vars['touch']) {
						$('.chosen-select').chosen({
							allow_single_deselect : true
						});
						//resize the chosen on window resize

						$(window).off('resize.chosen').on('resize.chosen',
								function() {
									$('.chosen-select').each(function() {
										var $this = $(this);
										$this.next().css({
											'width' : $this.parent().width()
										});
									})
								}).trigger('resize.chosen');
						//resize chosen on sidebar collapse/expand
						$(document).on('settings.ace.chosen',
								function(e, event_name, event_val) {
									if (event_name != 'sidebar_collapsed')
										return;
									$('.chosen-select').each(function() {
										var $this = $(this);
										$this.next().css({
											'width' : $this.parent().width()
										});
									})
								});

						$('#chosen-multiple-style .btn').on(
								'click',
								function(e) {
									var target = $(this).find(
											'input[type=radio]');
									var which = parseInt(target.val());
									if (which == 2)
										$('#form-field-select-4').addClass(
												'tag-input-style');
									else
										$('#form-field-select-4').removeClass(
												'tag-input-style');
								});
					}

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

					$('#id-input-file-1 , #id-input-file-2').ace_file_input({
						no_file : 'No File ...',
						btn_choose : 'Choose',
						btn_change : 'Change',
						droppable : false,
						onchange : null,
						thumbnail : false
					//| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
					});
					//pre-show a file name, for example a previously selected file
					//$('#id-input-file-1').ace_file_input('show_file_list', ['myfile.txt'])

					$('#id-input-file-3').ace_file_input({
						style : 'well',
						btn_choose : 'Drop files here or click to choose',
						btn_change : null,
						no_icon : 'ace-icon fa fa-cloud-upload',
						droppable : true,
						thumbnail : 'small'//large | fit
						//,icon_remove:null//set null, to hide remove/reset button
						/**,before_change:function(files, dropped) {
							//Check an example below
							//or examples/file-upload.html
							return true;
						}*/
						/**,before_remove : function() {
							return true;
						}*/
						,
						preview_error : function(filename, error_code) {
							//name of the file that failed
							//error_code values
							//1 = 'FILE_LOAD_FAILED',
							//2 = 'IMAGE_LOAD_FAILED',
							//3 = 'THUMBNAIL_FAILED'
							//alert(error_code);
						}

					}).on('change', function() {
						//console.log($(this).data('ace_input_files'));
						//console.log($(this).data('ace_input_method'));
					});

					//dynamically change allowed formats by changing allowExt && allowMime function
					$('#id-file-format')
							.removeAttr('checked')
							.on(
									'change',
									function() {
										var whitelist_ext, whitelist_mime;
										var btn_choose
										var no_icon
										if (this.checked) {
											btn_choose = "Drop images here or click to choose";
											no_icon = "ace-icon fa fa-picture-o";

											whitelist_ext = [ "jpeg", "jpg",
													"png", "gif", "bmp" ];
											whitelist_mime = [ "image/jpg",
													"image/jpeg", "image/png",
													"image/gif", "image/bmp" ];
										} else {
											btn_choose = "Drop files here or click to choose";
											no_icon = "ace-icon fa fa-cloud-upload";

											whitelist_ext = null;//all extensions are acceptable
											whitelist_mime = null;//all mimes are acceptable
										}
										var file_input = $('#id-input-file-3');
										file_input
												.ace_file_input(
														'update_settings',
														{
															'btn_choose' : btn_choose,
															'no_icon' : no_icon,
															'allowExt' : whitelist_ext,
															'allowMime' : whitelist_mime
														})
										file_input
												.ace_file_input('reset_input');

										file_input.off('file.error.ace').on(
												'file.error.ace',
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

					$(".knob").knob();

					/////////
					$('#modal-form input[type=file]').ace_file_input({
						style : 'well',
						btn_choose : 'Drop files here or click to choose',
						btn_change : null,
						no_icon : 'ace-icon fa fa-cloud-upload',
						droppable : true,
						thumbnail : 'large'
					})

					//chosen plugin inside a modal will have a zero width because the select element is originally hidden
					//and its width cannot be determined.
					//so we set the width after modal is show
					$('#modal-form').on(
							'shown.bs.modal',
							function() {
								if (!ace.vars['touch']) {
									$(this).find('.chosen-container').each(
											function() {
												$(this).find('a:first-child')
														.css('width', '210px');
												$(this).find('.chosen-drop')
														.css('width', '210px');
												$(this).find(
														'.chosen-search input')
														.css('width', '200px');
											});
								}
							})
					/**
					//or you can activate the chosen plugin after modal is shown
					//this way select element becomes visible with dimensions and chosen works as expected
					$('#modal-form').on('shown', function () {
						$(this).find('.modal-chosen').chosen();
					})
					 */

					$(document)
							.one(
									'ajaxloadstart.page',
									function(e) {
										autosize
												.destroy('textarea[class*=autosize]')

										$('.limiterBox,.autosizejs').remove();
										$(
												'.daterangepicker.dropdown-menu,.colorpicker.dropdown-menu,.bootstrap-datetimepicker-widget.dropdown-menu')
												.remove();
									});

				});
			</script>
</body>
</html>
