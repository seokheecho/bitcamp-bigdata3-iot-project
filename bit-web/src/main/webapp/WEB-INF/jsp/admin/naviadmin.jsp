<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar-buttons navbar-header pull-right" role="navigation">
	<ul class="nav ace-nav">
		<li class="grey dropdown-modal"><a data-toggle="dropdown"
			class="dropdown-toggle" href="#"> <i class="ace-icon fa fa-tasks"></i>
				<span class="badge badge-grey">4</span>
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
					class="ace-icon fa fa-exclamation-triangle"></i> 8 Notifications</li>

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
								class="msg-photo" alt="Alex's Avatar" /> <span class="msg-body">
									<span class="msg-title"> <span class="blue">민국:</span>
										어제도 하얗게 불살났어 ...
								</span> <span class="msg-time"> <i
										class="ace-icon fa fa-clock-o"></i> <span>a moment ago</span>
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
								class="msg-photo" alt="Bob's Avatar" /> <span class="msg-body">
									<span class="msg-title"> <span class="blue">수빈:</span>
										관리자 페이지에 새로운 기능을 추가했어요 ...
								</span> <span class="msg-time"> <i
										class="ace-icon fa fa-clock-o"></i> <span>3:15 pm</span>
								</span>
							</span>
						</a></li>

						<li><a href="#" class="clearfix"> <img
								src="${pageContext.servletContext.contextPath}/images/avatars/avatar2.png"
								class="msg-photo" alt="Kate's Avatar" /> <span class="msg-body">
									<span class="msg-title"> <span class="blue">종학:</span>
										빅데이터 분석에 따른 시각화 세부사항 ...
								</span> <span class="msg-time"> <i
										class="ace-icon fa fa-clock-o"></i> <span>1:33 pm</span>
								</span>
							</span>
						</a></li>

						<li><a href="#" class="clearfix"> <img
								src="${pageContext.servletContext.contextPath}/images/avatars/avatar5.png"
								class="msg-photo" alt="Fred's Avatar" /> <span class="msg-body">
									<span class="msg-title"> <span class="blue">동석:</span>
										어제도 할게 많았지만 오늘은 더 많다 ...
								</span> <span class="msg-time"> <i
										class="ace-icon fa fa-clock-o"></i> <span>10:09 am</span>
								</span>
							</span>
						</a></li>
					</ul>
				</li>

				<li class="dropdown-footer"><a href="inbox.html"> See all
						messages <i class="ace-icon fa fa-arrow-right"></i>
				</a></li>
			</ul></li>

		<li class="light-blue dropdown-modal"><a data-toggle="dropdown"
			href="#" class="dropdown-toggle"> <img class="nav-user-photo"
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

				<li><a href="profile.html"> <i class="ace-icon fa fa-user"></i>
						Profile
				</a></li>

				<li class="divider"></li>

				<li><a href="#"> <i class="ace-icon fa fa-power-off"></i>
						Logout
				</a></li>
			</ul></li>
	</ul>
</div>