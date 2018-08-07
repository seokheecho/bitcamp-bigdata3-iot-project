<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	<meta charset="utf-8" />
	<title>Admin</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" />

	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

	<!-- Favicon and touch icons -->
	<link rel="icon" href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
	<!-- ace settings handler -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/ace-extra.min.js"></script>
</head>

<body class="no-skin">
	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<div class="navbar-container ace-save-state" id="navbar-container">
			
			<!-- Header -->
			<jsp:include page="./headeradmin.jsp"></jsp:include>

			<!-- Nav -->
			<jsp:include page="./naviadmin.jsp"></jsp:include>

			
		</div><!-- /.navbar-container -->
	</div>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {}
		</script>

		<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
			<script type="text/javascript">
				try {
					ace.settings.loadState('sidebar')
				} catch (e) {}
			</script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

					<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

					<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

					<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span>

					<span class="btn btn-info"></span>

					<span class="btn btn-warning"></span>

					<span class="btn btn-danger"></span>
				</div>
			</div><!-- /.sidebar-shortcuts -->

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
						<li class=""><a href="registmenu.html"> <i
								class="menu-icon fa fa-caret-right"></i> Menu Board
						</a> <b class="arrow"></b></li>

						<li class=""><a href="eventlist"> <i
								class="menu-icon fa fa-caret-right"></i> Event Board
						</a> <b class="arrow"></b></li>

						<li class=""><a href="treeview.html"> <i
								class="menu-icon fa fa-caret-right"></i> Treeview
						</a> <b class="arrow"></b></li>

					</ul></li>

				<li class="active open"><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-pencil-square-o"></i> <span
						class="menu-text"> Stores </span> <b
						class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="admin-form-detail.html"> <i
								class="menu-icon fa fa-caret-right"></i> Store Infomation
						</a> <b class="arrow"></b></li>

						<li class="active"><a href="branchlist"> <i
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
				<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">Home</a>
						</li>

						<li>
							<a href="#">Stores</a>
						</li>
						<li class="active">Store List</li>
					</ul><!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
						</form>
					</div><!-- /.nav-search -->
				</div>

				<div class="page-content">
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-130"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left">

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
									<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
									<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
									<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
									<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
									<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
								</div>
							</div><!-- /.pull-left -->
						</div><!-- /.ace-settings-box -->
					</div><!-- /.ace-settings-container -->


					<!-- 실제적인 내용은 여기부터 넣으면 됨!! -->
					<div class="page-header">
						<h1>
							지점
							<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									각 매장 목록 정보
								</small>
						</h1>
					</div><!-- /.page-header -->
					
					<!-- 타이틀과 매장 추가버튼 -->
					<div class="row">
						<span class="col-xs-9"><div class="table-header">매장 리스트 및 상세정보</div></span>
						<span class="col-xs-3">
						<button class="btn btn-white btn-primary btn-bold">
							<i class="ace-icon fa fa-cloud-upload hidden-480"></i>
							<a href='../branch/form.html'>신규매장추가</a>
						</button>
						</span>
					</div>
					
					<!-- table을 위한 바깥 div 시작 -->
					<div class="row">
						<div class="col-xs-12">
						
							<!-- PAGE CONTENT BEGINS -->
							<div class="row">
									<div class="col-xs-12">
										<!-- table 시작 -->
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>
													<th class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</th>
													<th class="detail-col">상세</th>
													<th class="hidden-480">번호</th>
													<th>이름</th>
													<th class="hidden-480">전화</th>
													<th>
														<i class="ace-icon fa fa-user bigger-110 hidden-480"></i>
														점주번호
													</th>
													<th>점주이름</th>

													<th>setting</th>
												</tr>
											</thead>
											
											<!-- table body 시작 -->
											<tbody id="store-tbody">
											<c:forEach items="${list}" var="item"><!-- 객체 전체에 걸쳐 반복 실행? 1350라인까지 -->
												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" id="checkbox1" name="ckbSelect" value="" />
															<span class="lbl"></span>
														</label>
													</td>

													<td class="center">
														<div class="action-buttons">
															<a href="#" class="green bigger-140 show-details-btn" title="Show Details">
																<i class="ace-icon fa fa-angle-double-down"></i>
																<span class="sr-only">Details</span>
															</a>
														</div>
													</td>

													<td class="hidden-480">${item.no}</td>
													<td><a href='branchinfo?no=${item.no}'>${item.name}</a></td>
													<td class="hidden-480">${item.tel}</td>
													<td>${item.bmno}</td>
													<td>${item.bmname}</td>

													<td>
														<div class="hidden-sm hidden-xs btn-group">
															<button class="btn btn-xs btn-success">
																<i class="ace-icon fa fa-search-plus bigger-120"></i>
															</button>

															<button class="btn btn-xs btn-info">
																<i class="ace-icon fa fa-pencil bigger-120"></i>
															</button>

															<button class="btn btn-xs btn-danger" type=button onclick='doDelete()'>
																<i class="ace-icon fa fa-trash-o bigger-120"></i>
															</button>
														</div>
															
															<!-- 테블릿 or 핸드폰 화면전용 -->
															<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete" id="btnDelete" name="btnDelete" >
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div><!-- 테블릿,핸드폰 전용 div끝 -->
													</td>
												</tr>
											</c:forEach><!-- forEach 반복 끝? -->
												
												<!-- 상세정보 페이지!! -->
												<tr class="detail-row">
													<td colspan="8">
														<div class="table-detail">
															<div class="row">
																<div class="col-xs-12 col-sm-2">
																	<div class="text-center">
																		<img height="150" class="thumbnail inline no-margin-bottom" alt="store image" src="${pageContext.servletContext.contextPath}/images/restaurants.jpg" />
																		<br />
																		<div class="label label-info label-xlg">
																			<div class="inline position-relative">
																				<a class="user-title-label" href="#">
																					<i class="ace-icon fa fa-cutlery light-green"></i>
																					<span class="white">Store name</span>
																				</a>
																			</div>
																		</div>
																	</div>
																</div>

																<div class="col-xs-12 col-sm-7">
																	<div class="space visible-xs"></div>

																	<div class="profile-user-info profile-user-info-striped">
																		<div class="profile-info-row">
																			<div class="profile-info-name"> 매장번호 </div>

																			<div class="profile-info-value">
																				<span>${item.no}</span>
																			</div>
																		</div>

																		<div class="profile-info-row">
																			<div class="profile-info-name"> 지역 </div>

																			<div class="profile-info-value">
																				<i class="fa fa-map-marker light-orange bigger-110"></i>
																				<span>${branch.area}</span>
																			</div>
																		</div>

																		<div class="profile-info-row">
																			<div class="profile-info-name"> 설치기기번호 </div>

																			<div class="profile-info-value">
																				<span></span>
																			</div>
																		</div>

																		<div class="profile-info-row">
																			<div class="profile-info-name"> 설치날짜 </div>

																			<div class="profile-info-value">
																				<span></span>
																			</div>
																		</div>

																		<div class="profile-info-row">
																			<div class="profile-info-name"> 최근 연결상태 </div>

																			<div class="profile-info-value">
																				<span>3 hours ago</span>
																			</div>
																		</div>

																		<div class="profile-info-row">
																			<div class="profile-info-name"> 서비스 다운로드 회수 </div>

																			<div class="profile-info-value">
																				<span>12</span>
																			</div>
																		</div>
																	</div>
																</div>

																<div class="col-xs-12 col-sm-3">
																	<div class="space visible-xs"></div>
																	<h4 class="header blue lighter less-margin">특이사항 메모</h4>

																	<div class="space-6"></div>

																	<form>
																		<fieldset>
																			<textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
																		</fieldset>

																		<div class="hr hr-dotted"></div>

																		<div class="clearfix">
																			<label class="pull-left">
																				<input type="checkbox" class="ace" />
																				<span class="lbl"> 메모 저장</span>
																			</label>

																			<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
																				확인
																				<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
																			</button>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</td>
												</tr>
											</tbody><!-- table body 끝 -->
										</table><!-- table 끝 -->
									</div><!-- /.span -->
								</div><!-- /.row -->
						</div> <!-- /.col -->
					</div> <!-- /.row -->
				</div> <!-- /.page-content -->
			</div>
		</div> <!-- /.main-content -->

		<!-- Footer -->
			<jsp:include page="./footeradmin.jsp"></jsp:include>

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
	</div> <!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="${pageContext.servletContext.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
	</script>
	<script>
		function doAdd() {
		  location.href = 'add2.do'
		}
		function doDelete() {
		  location.href = 'delete.do?no=${branch.no}'
		}
	
	</script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!-- ace scripts -->
	<script src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
	jQuery(function($) {
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside TH table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select or deselect a row when the checkbox is checked or unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if($row.is('.detail-row ')) return;
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
			/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
		
			/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
		
				$(document).ready(function() {
		 	/*----------------------------------------------------------------
  			* 키값 rowTag로 테이블의 기본 row 값의 Html태그 저장
			-----------------------------------------------------------------*/
					var rowTag = $("table tbody").html();
					$(".simple-table").data("rowTag", rowTag); //키값 rowTag로 테이블의 기본 row 값의 Html태그 저장
				});
			/* ********************************************************
 				* 체크박스 현재행 삭제 기능 => 현재 에러남...
 			******************************************************** */ 
						function rowDelete(obj) {
						$("tbody td input[type=checkbox] :checked").each(function() {
    					$(this).parent().parent().remove()
							});
						}
		
		
		
		})
	</script>
	
</body>
</html>
