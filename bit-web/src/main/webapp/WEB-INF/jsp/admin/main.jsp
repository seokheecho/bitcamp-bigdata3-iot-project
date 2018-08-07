<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8" />
<title>Index Admin</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!-- Morris Chart Styles-->
<link
	href="${pageContext.servletContext.contextPath}/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />

<!-- Favicon and touch icons -->
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
<!-- ace settings handler -->
<script
	src="${pageContext.servletContext.contextPath}/assets/js/ace-extra.min.js"></script>

<style>
.board .panel {
	padding: 25px 15px;
}

.panel-primary {
	display: inline-block;
	margin-bottom: 30px;
	width: 100%;
}

.board .icon {
	float: right;
	position: relative;
	margin-top: -64px;
}
</style>
</head>

<body class="no-skin">
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<!-- Header -->
			<jsp:include page="./headeradmin.jsp"></jsp:include>

			<!-- Nav -->
			<jsp:include page="./naviadmin.jsp"></jsp:include>


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
				<li class="active"><a href="main"> <i
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

						<li class=""><a href="../category/list"> <i
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
						<li class="active">Dashboard</li>
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

					<div class="page-header">
						<h1>
							Dashboard <small> <i
								class="ace-icon fa fa-angle-double-right"></i> overview &amp;
								stats
							</small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<div class="row">
								<div class="col-md-3 col-sm-12 col-xs-12">
									<div class="board">
										<div class="panel panel-primary">
											<div class="number">
												<h3>
													<h3>24,023</h3>
													<small>Daily Visits</small>
												</h3>
											</div>
											<div class="icon">
												<i class="fa fa-eye fa-5x red"></i>
											</div>

										</div>
									</div>
								</div>

								<div class="col-md-3 col-sm-12 col-xs-12">
									<div class="board">
										<div class="panel panel-primary">
											<div class="number">
												<h3>
													<h3>10,850</h3>
													<small>Sales</small>
												</h3>
											</div>
											<div class="icon">
												<i class="fa fa-shopping-cart fa-5x blue"></i>
											</div>

										</div>
									</div>
								</div>

								<div class="col-md-3 col-sm-12 col-xs-12">
									<div class="board">
										<div class="panel panel-primary">
											<div class="number">
												<h3>
													<h3>16,150</h3>
													<small>Comments</small>
												</h3>
											</div>
											<div class="icon">
												<i class="fa fa-comments fa-5x green"></i>
											</div>

										</div>
									</div>
								</div>

								<div class="col-md-3 col-sm-12 col-xs-12">
									<div class="board">
										<div class="panel panel-primary">
											<div class="number">
												<h3>
													<h3>49,645</h3>
													<small>Daily Profits</small>
												</h3>
											</div>
											<div class="icon">
												<i class="fa fa-user fa-5x yellow"></i>
											</div>

										</div>
									</div>
								</div>

							</div>


							<div class="row">
								<div class="col-md-5">
									<div class="panel panel-default">
										<div class="panel-heading">Line Chart</div>
										<div class="panel-body">
											<div id="morris-line-chart"></div>
										</div>
									</div>
								</div>

								<div class="col-md-7">
									<div class="panel panel-default">
										<div class="panel-heading">Bar Chart</div>
										<div class="panel-body">
											<div id="morris-bar-chart"></div>
										</div>

									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-9 col-sm-12 col-xs-12">
									<div class="panel panel-default">
										<div class="panel-heading">Area Chart</div>
										<div class="panel-body">
											<div id="morris-area-chart"></div>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-12 col-xs-12">
									<div class="panel panel-default">
										<div class="panel-heading">Donut Chart</div>
										<div class="panel-body">
											<div id="morris-donut-chart"></div>
										</div>
									</div>
								</div>

							</div>

							<div class="hr hr32 hr-dotted"></div>

							<div class="row">
								<div class="col-sm-6">
									<div class="widget-box transparent" id="recent-box">
										<div class="widget-header">
											<h4 class="widget-title lighter smaller">
												<i class="ace-icon fa fa-rss orange"></i>RECENT
											</h4>

											<div class="widget-toolbar no-border">
												<ul class="nav nav-tabs" id="recent-tab">
													<li class="active"><a data-toggle="tab"
														href="#task-tab">Tasks</a></li>

													<li><a data-toggle="tab" href="#member-tab">Members</a>
													</li>

													<li><a data-toggle="tab" href="#comment-tab">Comments</a>
													</li>
												</ul>
											</div>
										</div>

										<div class="widget-body">
											<div class="widget-main padding-4">
												<div class="tab-content padding-8">
													<div id="task-tab" class="tab-pane active">
														<h4 class="smaller lighter green">
															<i class="ace-icon fa fa-list"></i> Sortable Lists
														</h4>

														<ul id="tasks" class="item-list">
															<li class="item-orange clearfix"><label
																class="inline"> <input type="checkbox"
																	class="ace" /> <span class="lbl"> Answering
																		customer questions</span>
															</label>

																<div class="pull-right easy-pie-chart percentage"
																	data-size="30" data-color="#ECCB71" data-percent="42">
																	<span class="percent">42</span>%
																</div></li>

															<li class="item-red clearfix"><label class="inline">
																	<input type="checkbox" class="ace" /> <span
																	class="lbl"> Fixing bugs</span>
															</label>

																<div class="pull-right action-buttons">
																	<a href="#" class="blue"> <i
																		class="ace-icon fa fa-pencil bigger-130"></i>
																	</a> <span class="vbar"></span> <a href="#" class="red">
																		<i class="ace-icon fa fa-trash-o bigger-130"></i>
																	</a> <span class="vbar"></span> <a href="#" class="green">
																		<i class="ace-icon fa fa-flag bigger-130"></i>
																	</a>
																</div></li>

															<li class="item-default clearfix"><label
																class="inline"> <input type="checkbox"
																	class="ace" /> <span class="lbl"> Adding new
																		features</span>
															</label>

																<div class="pull-right pos-rel dropdown-hover">
																	<button class="btn btn-minier bigger btn-primary">
																		<i class="ace-icon fa fa-cog icon-only bigger-120"></i>
																	</button>

																	<ul
																		class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-caret dropdown-close dropdown-menu-right">
																		<li><a href="#" class="tooltip-success"
																			data-rel="tooltip" title="Mark&nbsp;as&nbsp;done">
																				<span class="green"> <i
																					class="ace-icon fa fa-check bigger-110"></i>
																			</span>
																		</a></li>

																		<li><a href="#" class="tooltip-error"
																			data-rel="tooltip" title="Delete"> <span
																				class="red"> <i
																					class="ace-icon fa fa-trash-o bigger-110"></i>
																			</span>
																		</a></li>
																	</ul>
																</div></li>

															<li class="item-blue clearfix"><label class="inline">
																	<input type="checkbox" class="ace" /> <span
																	class="lbl"> Upgrading scripts used in template</span>
															</label></li>

															<li class="item-grey clearfix"><label class="inline">
																	<input type="checkbox" class="ace" /> <span
																	class="lbl"> Adding new skins</span>
															</label></li>

															<li class="item-green clearfix"><label
																class="inline"> <input type="checkbox"
																	class="ace" /> <span class="lbl"> Updating
																		server software up</span>
															</label></li>

															<li class="item-pink clearfix"><label class="inline">
																	<input type="checkbox" class="ace" /> <span
																	class="lbl"> Cleaning up</span>
															</label></li>
														</ul>
													</div>

													<div id="member-tab" class="tab-pane">
														<div class="clearfix">
															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Bob Doe's avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/master.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Master</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">20 min</span>
																	</div>

																	<div>
																		<span class="label label-warning label-sm">pending</span>

																		<div class="inline position-relative">
																			<button
																				class="btn btn-minier btn-yellow btn-no-border dropdown-toggle"
																				data-toggle="dropdown" data-position="auto">
																				<i
																					class="ace-icon fa fa-angle-down icon-only bigger-120"></i>
																			</button>

																			<ul
																				class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																				<li><a href="#" class="tooltip-success"
																					data-rel="tooltip" title="Approve"> <span
																						class="green"> <i
																							class="ace-icon fa fa-check bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-warning"
																					data-rel="tooltip" title="Reject"> <span
																						class="orange"> <i
																							class="ace-icon fa fa-times bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-error"
																					data-rel="tooltip" title="Delete"> <span
																						class="red"> <i
																							class="ace-icon fa fa-trash-o bigger-110"></i>
																					</span>
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Joe Doe's avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar2.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">종학</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">1 hour</span>
																	</div>

																	<div>
																		<span class="label label-warning label-sm">pending</span>

																		<div class="inline position-relative">
																			<button
																				class="btn btn-minier btn-yellow btn-no-border dropdown-toggle"
																				data-toggle="dropdown" data-position="auto">
																				<i
																					class="ace-icon fa fa-angle-down icon-only bigger-120"></i>
																			</button>

																			<ul
																				class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																				<li><a href="#" class="tooltip-success"
																					data-rel="tooltip" title="Approve"> <span
																						class="green"> <i
																							class="ace-icon fa fa-check bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-warning"
																					data-rel="tooltip" title="Reject"> <span
																						class="orange"> <i
																							class="ace-icon fa fa-times bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-error"
																					data-rel="tooltip" title="Delete"> <span
																						class="red"> <i
																							class="ace-icon fa fa-trash-o bigger-110"></i>
																					</span>
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Jim Doe's avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">민국</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">2 hour</span>
																	</div>

																	<div>
																		<span class="label label-warning label-sm">pending</span>

																		<div class="inline position-relative">
																			<button
																				class="btn btn-minier btn-yellow btn-no-border dropdown-toggle"
																				data-toggle="dropdown" data-position="auto">
																				<i
																					class="ace-icon fa fa-angle-down icon-only bigger-120"></i>
																			</button>

																			<ul
																				class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																				<li><a href="#" class="tooltip-success"
																					data-rel="tooltip" title="Approve"> <span
																						class="green"> <i
																							class="ace-icon fa fa-check bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-warning"
																					data-rel="tooltip" title="Reject"> <span
																						class="orange"> <i
																							class="ace-icon fa fa-times bigger-110"></i>
																					</span>
																				</a></li>

																				<li><a href="#" class="tooltip-error"
																					data-rel="tooltip" title="Delete"> <span
																						class="red"> <i
																							class="ace-icon fa fa-trash-o bigger-110"></i>
																					</span>
																				</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Alex Doe's avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar5.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">Donny</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">3 hour</span>
																	</div>

																	<div>
																		<span class="label label-success label-sm arrowed-in">approved</span>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Bob Doe's avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar2.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">준상</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">6 hour</span>
																	</div>

																	<div>
																		<span class="label label-danger label-sm">blocked</span>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Susan's avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar3.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">연주</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">yesterday</span>
																	</div>

																	<div>
																		<span class="label label-success label-sm arrowed-in">approved</span>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Phil Doe's avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar4.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">수빈</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">2 days ago</span>
																	</div>

																	<div>
																		<span
																			class="label label-info label-sm arrowed-in arrowed-in-right">online</span>
																	</div>
																</div>
															</div>

															<div class="itemdiv memberdiv">
																<div class="user">
																	<img alt="Alexa Doe's avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/user.jpg" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">재홍</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">3 days ago</span>
																	</div>

																	<div>
																		<span class="label label-success label-sm arrowed-in">approved</span>
																	</div>
																</div>
															</div>
														</div>

														<div class="space-4"></div>

														<div class="center">
															<i class="ace-icon fa fa-users fa-2x green middle"></i>

															&nbsp; <a href="#" class="btn btn-sm btn-white btn-info">
																See all members &nbsp; <i
																class="ace-icon fa fa-arrow-right"></i>
															</a>
														</div>

														<div class="hr hr-double hr8"></div>
													</div>
													<!-- /.#member-tab -->

													<div id="comment-tab" class="tab-pane">
														<div class="comments">
															<div class="itemdiv commentdiv">
																<div class="user">
																	<img alt="Bob Doe's Avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">민국</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="green">6 min</span>
																	</div>

																	<div class="text">
																		<i class="ace-icon fa fa-quote-left"></i> RESTful API와
																		인터셉터 기능에 관한 개념을 정리했습니다. 상세 내용은 &hellip;
																	</div>
																</div>

																<div class="tools">
																	<div class="inline position-relative">
																		<button
																			class="btn btn-minier bigger btn-yellow dropdown-toggle"
																			data-toggle="dropdown">
																			<i
																				class="ace-icon fa fa-angle-down icon-only bigger-120"></i>
																		</button>

																		<ul
																			class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																			<li><a href="#" class="tooltip-success"
																				data-rel="tooltip" title="Approve"> <span
																					class="green"> <i
																						class="ace-icon fa fa-check bigger-110"></i>
																				</span>
																			</a></li>

																			<li><a href="#" class="tooltip-warning"
																				data-rel="tooltip" title="Reject"> <span
																					class="orange"> <i
																						class="ace-icon fa fa-times bigger-110"></i>
																				</span>
																			</a></li>

																			<li><a href="#" class="tooltip-error"
																				data-rel="tooltip" title="Delete"> <span
																					class="red"> <i
																						class="ace-icon fa fa-trash-o bigger-110"></i>
																				</span>
																			</a></li>
																		</ul>
																	</div>
																</div>
															</div>

															<div class="itemdiv commentdiv">
																<div class="user">
																	<img alt="Jennifer's Avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/user.jpg" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">재홍</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="blue">15 min</span>
																	</div>

																	<div class="text">
																		<i class="ace-icon fa fa-quote-left"></i> IoT 센서값 이슈처리
																		관련입니다. AWS IoT에서 쉐도우 기능이 &hellip;
																	</div>
																</div>

																<div class="tools">
																	<div class="action-buttons bigger-125">
																		<a href="#"> <i class="ace-icon fa fa-pencil blue"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-trash-o red"></i>
																		</a>
																	</div>
																</div>
															</div>

															<div class="itemdiv commentdiv">
																<div class="user">
																	<img alt="Joe's Avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar2.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">종학</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="orange">22 min</span>
																	</div>

																	<div class="text">
																		<i class="ace-icon fa fa-quote-left"></i> 빅데이터의 원활한
																		수집에 있어 어려움이 있습니다. 정보공개 등의 이유로 데이터를 수집, 처리하는데 약간의 어려움이
																		&hellip;
																	</div>
																</div>

																<div class="tools">
																	<div class="action-buttons bigger-125">
																		<a href="#"> <i class="ace-icon fa fa-pencil blue"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-trash-o red"></i>
																		</a>
																	</div>
																</div>
															</div>

															<div class="itemdiv commentdiv">
																<div class="user">
																	<img alt="Rita's Avatar"
																		src="${pageContext.servletContext.contextPath}/images/avatars/avatar3.png" />
																</div>

																<div class="body">
																	<div class="name">
																		<a href="#">연주</a>
																	</div>

																	<div class="time">
																		<i class="ace-icon fa fa-clock-o"></i> <span
																			class="red">50 min</span>
																	</div>

																	<div class="text">
																		<i class="ace-icon fa fa-quote-left"></i> 매장 챗봇 기능에
																		앞으로 추가해야 할 기능등을 정리했어요. 다음달 새롭게 추가될 기능과 사용 기술에는
																		&hellip;
																	</div>
																</div>

																<div class="tools">
																	<div class="action-buttons bigger-125">
																		<a href="#"> <i class="ace-icon fa fa-pencil blue"></i>
																		</a> <a href="#"> <i
																			class="ace-icon fa fa-trash-o red"></i>
																		</a>
																	</div>
																</div>
															</div>
														</div>

														<div class="hr hr8"></div>

														<div class="center">
															<i class="ace-icon fa fa-comments-o fa-2x green middle"></i>

															&nbsp; <a href="#" class="btn btn-sm btn-white btn-info">
																See all comments &nbsp; <i
																class="ace-icon fa fa-arrow-right"></i>
															</a>
														</div>

														<div class="hr hr-double hr8"></div>
													</div>
												</div>
											</div>
											<!-- /.widget-main -->
										</div>
										<!-- /.widget-body -->
									</div>
									<!-- /.widget-box -->
								</div>
								<!-- /.col -->

								<div class="col-sm-6">
									<div class="widget-box">
										<div class="widget-header">
											<h4 class="widget-title lighter smaller">
												<i class="ace-icon fa fa-comment blue"></i> Conversation
											</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main no-padding">
												<div class="dialogs">
													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="Alexa's Avatar"
																src="${pageContext.servletContext.contextPath}/images/avatars/user.jpg" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="green">4 sec</span>
															</div>

															<div class="name">
																<a href="#">재홍</a>
															</div>
															<div class="text">commodo의 인증 유효 기간에 대하여 의견이 있습니다.
																앞으로 인증서를 다른곳을 이용하는 것도 검토해야 겠습니다.</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="John's Avatar"
																src="${pageContext.servletContext.contextPath}/images/avatars/avatar.png" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="blue">38 sec</span>
															</div>

															<div class="name">
																<a href="#">민국</a>
															</div>
															<div class="text">날마다 쩌는것도 좋지만 가끔씩은 여유를 즐기는 것도
																어떨까요. 특히 요즘 저 힘들거든요 ㅎㅎ</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="Bob's Avatar"
																src="${pageContext.servletContext.contextPath}/images/avatars/master.png" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="orange">2 min</span>
															</div>

															<div class="name">
																<a href="#">Master</a> <span
																	class="label label-info arrowed arrowed-in-right">admin</span>
															</div>
															<div class="text">오호라~ 여러분들이 더욱 힘써주어야 좋은 프로젝트로서
																마무리가 될 것이고 그것은 여러분의 취업에 큰 원동력이 될 것 입니다.</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="Jim's Avatar"
																src="${pageContext.servletContext.contextPath}/images/avatars/avatar4.png" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="grey">3 min</span>
															</div>

															<div class="name">
																<a href="#">수빈</a>
															</div>
															<div class="text">두번다시 제가 웹개발을 하면 전 사람이 아니옵니다...
																극혐-_-;</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>

													<div class="itemdiv dialogdiv">
														<div class="user">
															<img alt="Alexa's Avatar"
																src="${pageContext.servletContext.contextPath}/images/avatars/avatar1.png" />
														</div>

														<div class="body">
															<div class="time">
																<i class="ace-icon fa fa-clock-o"></i> <span
																	class="green">4 min</span>
															</div>

															<div class="name">
																<a href="#">연주</a>
															</div>
															<div class="text">많은 부분 준비가 부족해 죄송합니다. 앞으로는 더 노력해야
																겠어요.</div>

															<div class="tools">
																<a href="#" class="btn btn-minier btn-info"> <i
																	class="icon-only ace-icon fa fa-share"></i>
																</a>
															</div>
														</div>
													</div>
												</div>

												<form>
													<div class="form-actions">
														<div class="input-group">
															<input placeholder="Type your message here ..."
																type="text" class="form-control" name="message" /> <span
																class="input-group-btn">
																<button class="btn btn-sm btn-info no-radius"
																	type="button">
																	<i class="ace-icon fa fa-share"></i> Send
																</button>
															</span>
														</div>
													</div>
												</form>
											</div>
											<!-- /.widget-main -->
										</div>
										<!-- /.widget-body -->
									</div>
									<!-- /.widget-box -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
							<!-- /. ROW  -->
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<!-- Footer -->
		<jsp:include page="./footeradmin.jsp"></jsp:include>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

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
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.easypiechart.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.sparkline.index.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.flot.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.flot.resize.min.js"></script>

	<!-- Metis Menu Js -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.metisMenu.js"></script>
	<!-- Chart Js -->
	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath}/assets/js/Chart.min.js"></script>
	<!-- Morris Chart Js -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/morris/raphael-2.1.0.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/morris/morris.js"></script>

	<!-- ace scripts -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>

	<!-- Custom Js -->
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/custom-scripts.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$('.easy-pie-chart.percentage')
					.each(
							function() {
								var $box = $(this).closest('.infobox');
								var barColor = $(this).data('color')
										|| (!$box.hasClass('infobox-dark') ? $box
												.css('color')
												: 'rgba(255,255,255,0.95)');
								var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
										: '#E2E2E2';
								var size = parseInt($(this).data('size')) || 50;
								$(this)
										.easyPieChart(
												{
													barColor : barColor,
													trackColor : trackColor,
													scaleColor : false,
													lineCap : 'butt',
													lineWidth : parseInt(size / 10),
													animate : ace.vars['old_ie'] ? false
															: 1000,
													size : size
												});
							})

			$('.sparkline').each(
					function() {
						var $box = $(this).closest('.infobox');
						var barColor = !$box.hasClass('infobox-dark') ? $box
								.css('color') : '#FFF';
						$(this).sparkline('html', {
							tagValuesAttribute : 'data-values',
							type : 'bar',
							barColor : barColor,
							chartRangeMin : $(this).data('min') || 0
						});
					});

			//flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			//but sometimes it brings up errors with normal resize event handlers

			$.resize.throttleWindow = false;

			var placeholder = $('#piechart-placeholder').css({
				'width' : '90%',
				'min-height' : '150px'
			});
			var data = [ {
				label : "social networks",
				data : 38.7,
				color : "#68BC31"
			}, {
				label : "search engines",
				data : 24.5,
				color : "#2091CF"
			}, {
				label : "ad campaigns",
				data : 8.2,
				color : "#AF4E96"
			}, {
				label : "direct traffic",
				data : 18.6,
				color : "#DA5430"
			}, {
				label : "other",
				data : 10,
				color : "#FEE074"
			} ]
			function drawPieChart(placeholder, data, position) {
				$.plot(placeholder, data, {
					series : {
						pie : {
							show : true,
							tilt : 0.8,
							highlight : {
								opacity : 0.25
							},
							stroke : {
								color : '#fff',
								width : 2
							},
							startAngle : 2
						}
					},
					legend : {
						show : true,
						position : position || "ne",
						labelBoxBorderColor : null,
						margin : [ -30, 15 ]
					},
					grid : {
						hoverable : true,
						clickable : true
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
			var $tooltip = $(
					"<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
					.hide().appendTo('body');
			var previousPoint = null;

			placeholder.on('plothover', function(event, pos, item) {
				if (item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : "
								+ item.series['percent'] + '%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({
						top : pos.pageY + 10,
						left : pos.pageX + 10
					});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}

			});

			/////////////////////////////////////
			$(document).one('ajaxloadstart.page', function(e) {
				$tooltip.remove();
			});

			var d1 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d1.push([ i, Math.sin(i) ]);
			}

			var d2 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d2.push([ i, Math.cos(i) ]);
			}

			var d3 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.2) {
				d3.push([ i, Math.tan(i) ]);
			}

			var sales_charts = $('#sales-charts').css({
				'width' : '100%',
				'height' : '220px'
			});
			$.plot("#sales-charts", [ {
				label : "Domains",
				data : d1
			}, {
				label : "Hosting",
				data : d2
			}, {
				label : "Services",
				data : d3
			} ], {
				hoverable : true,
				shadowSize : 0,
				series : {
					lines : {
						show : true
					},
					points : {
						show : true
					}
				},
				xaxis : {
					tickLength : 0
				},
				yaxis : {
					ticks : 10,
					min : -2,
					max : 2,
					tickDecimals : 3
				},
				grid : {
					backgroundColor : {
						colors : [ "#fff", "#fff" ]
					},
					borderWidth : 1,
					borderColor : '#555'
				}
			});

			$('#recent-box [data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('.tab-content')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

			$('.dialogs,.comments').ace_scroll({
				size : 300
			});

			//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
			//so disable dragging when clicking on label
			var agent = navigator.userAgent.toLowerCase();
			if (ace.vars['touch'] && ace.vars['android']) {
				$('#tasks').on('touchstart', function(e) {
					var li = $(e.target).closest('#tasks li');
					if (li.length == 0)
						return;
					var label = li.find('label.inline').get(0);
					if (label == e.target || $.contains(label, e.target))
						e.stopImmediatePropagation();
				});
			}

			$('#tasks').sortable({
				opacity : 0.8,
				revert : true,
				forceHelperSize : true,
				placeholder : 'draggable-placeholder',
				forcePlaceholderSize : true,
				tolerance : 'pointer',
				stop : function(event, ui) {
					//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
					$(ui.item).css('z-index', 'auto');
				}
			});
			$('#tasks').disableSelection();
			$('#tasks input:checkbox').removeAttr('checked').on('click',
					function() {
						if (this.checked)
							$(this).closest('li').addClass('selected');
						else
							$(this).closest('li').removeClass('selected');
					});

			//show the dropdowns on top or bottom depending on window height and menu position
			$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
				var offset = $(this).offset();

				var $w = $(window)
				if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
					$(this).addClass('dropup');
				else
					$(this).removeClass('dropup');
			});

		})
	</script>
</body>
</html>
