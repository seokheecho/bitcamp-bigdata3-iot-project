<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>Event Board Mgt</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/font-awesome.min.css" /> 

<!-- page specific plugin styles -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="https://jqueryui.com/resources/demos/style.css">
		
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/jquery-ui.custom.min.css" />

<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/chosen.min.css" />

<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/fonts.googleapis.com.css" />

<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style">

<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/assets/css/registration.css" /> 




<link rel="icon"
	href="${pageContext.servletContext.contextPath}/ico/home_iot.png">
<style>
.modal-dialog {
	position: relative width:600px;
	margin: 45px auto;
}

@media screen and (max-width: 480px) {
	button {
		padding: 0;
		width: auto;
	}
}
</style>
</head>

<body class="subpage">

	<!-- Header-->
	<jsp:include page="../header.jsp"></jsp:include>  
	
	
	<!-- Nav -->
	<jsp:include page="../navi.jsp"></jsp:include>
	
	<!-- Modal -->
	<div class="container">
		<div id="my-modal" class="modal fade" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="smaller lighter blue no-margin">이벤트 템플릿 예제화면</h3>
					</div>

					<div class="modal-body">
						<img class="image fit" id="output-temp" alt="event template image"
							src="${pageContext.servletContext.contextPath}/images/event-image-test2.png" />
					</div>

					<div class="modal-footer">
						<button class="btn btn-sm btn-danger pull-right"
							data-dismiss="modal">
							<i class="ace-icon fa fa-times"></i> Close
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

		<div id="aside-inside-modal" class="modal" data-placement="bottom"
			data-background="true" data-backdrop="false" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-12 white">
								<h4 class="lighter no-margin">선택 이벤트 템플릿</h4>
								<p align="center">
									현재 보고 계시는 템플릿은 <span id="eventTemp">Focus_Event Template</span>
									입니다.
								</p>
								<br />
							</div>
						</div>
					</div>
				</div><!-- /.modal-content -->

				<button
					class="btn btn-default btn-app btn-xs ace-settings-btn aside-trigger"
					data-target="#aside-inside-modal" data-toggle="modal" type="button">
					<i data-icon2="fa-arrow-down" data-icon1="fa-arrow-up"
						class="ace-icon fa fa-arrow-up bigger-110 icon-only"></i>
				</button>
			</div><!-- /.modal-dialog -->
		</div>
	</div>

	<!-- Main -->
	<div id="main">
		<section class="wrapper">
			<div class="inner">
				<header class="align-center">
					<h2>Event Board Management</h2>
					<p>이벤트보드 윈도우에 표시할 메뉴정보 및 이미지를 등록하세요.</p>
				</header>
			</div>
		</section>

		<section class="wrapper style1">
			<div class="inner">
				<div class="row">
					<div class="3u 12u$(medium)">
						<div class="box">
							<p align="center">
								<strong>'${loginBranchMaster.name}'</strong> 님 반갑습니다.
							</p>
							<a href="loginmain.html" class="button special">로그인 페이지 이동</a> <a
								href="#" class="button alt">로그 아웃</a>
						</div>
						<div class="box">
							<ul class="actions vertical">
								<li><a href="dmb_menu.html" class="button">메뉴보드</a></li>
								<li><a href="${pageContext.request.contextPath}/event/eventrequest" class="button">이벤트보드</a></li>
								<li><a href="${pageContext.request.contextPath}/awsiot/iotcontrol" class="button">실내 환경</a></li>
								<li><a href="${pageContext.request.contextPath}/storemanagement/main" class="button">매장관리
										처음으로 이동</a></li>
								<li><a href='${pageContext.request.contextPath}/auth/mypage' class="button">마이페이지로 이동</a></li>
							</ul>
						</div>
					</div>
					<div class="9u$ 12u$(medium)">
						<div class="box">
							<form method="post" role="form" action="add.do" enctype="multipart/form-data">
								<div class="row uniform">

									<div class="3u 12u$(xsmall)">
										<h4>매장명</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<div class="select-wrapper">
											<select id="branchSelect" name="bno">

												<c:forEach items="${branchList}" var="branch">
													<option value="${branch.no}">${branch.name}</option>

												</c:forEach>

											</select>
										</div>
									</div>
									<div class="3u 12u$(xsmall)">
										<h4>이벤트 템플릿</h4>
									</div>
									<div class="5u 12u$(xsmall)">
										<div class="select-wrapper">
											<select name="etpno" id="eventWindow">
												<c:forEach items="${templateList}" var="template">
													<option value="${template.no}">${template.title}</option>

												 </c:forEach>
											</select>
										</div>
									</div>
									<div class="3u$ 12u$(xsmall)">
										<!-- 보기창은 모달창으로 -->
										<div class="actions">
											<a href="#my-modal" class="button" role="button"
												data-toggle="modal">예제 미리보기</a>
										</div>
									</div>

									<div class="3u 12u$(xsmall)">
										<h4>이벤트보드 제목</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text" name="title" id="wineventTitle" 
											placeholder="이벤트창의 타이틀 입력 예) MyEvent01" />
									</div>

									<div class="3u 12u$(xsmall)">
										<h4>이벤트 분류</h4>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<div class="select-wrapper">
											<select name="type" id="eventSelect" name="eventSelect">
												<option value="">- 이벤트를 선택하세요 -</option>
												<option value="할인 Event">할인 Event</option>
												<option value="신제품 Event">신제품 Event</option>
											</select>
										</div>
									</div>

									<div class="3u 12u$(xsmall)">
										<label for="from"><h4>행사 시작일</h4></label>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text" id="from" name="startdate" value="" />
									</div>

									<div class="3u 12u$(xsmall)">
										<label for="to"><h4>행사 종료일</h4></label>
									</div>
									<div class="5u$ 12u$(xsmall)">
										<input type="text" id="to" name="enddate" value="" />
									</div>

									<div class="space-4"></div>

									<!-- 이벤트 이미지선택 및 내용 입력 -->
									<div class="12u$">
										<div class="col-xs-12 col-sm-6">
											<div class="widget-box">
												<div class="widget-header">
													<h4 class="widget-title"
														style="font-size: 1.2em; color: #669FC7;">이미지 넣기</h4>

													<div class="widget-toolbar">
														<a href="#" data-action="collapse">
															<i class="ace-icon fa fa-chevron-up"></i>
														</a>

														<a href="#" data-action="close">
															<i class="ace-icon fa fa-times"></i>
														</a>
													</div>
												</div>

												<div class="widget-body">
													<div class="widget-main">
														<div class="form-group">
															<div class="col-xs-12">
																<input  type="file" name="photo"
																	id="id-input-file-3" onchange="loadFile(event)" >
															</div>
														</div>

														<label> <input type="checkbox" name="file-format"
															id="id-file-format" class="ace" /> <span class="lbl">
																이미지 파일만 허용</span>
														</label>
													</div>
												</div>
											</div>
										</div>

										<div class="col-xs-12 col-sm-6">
											
											<div class="form-group">
												<label for="wineventTitle"> 중요 어필 포인트</label>
												<div>
													<input type="text" name="content" id="wineventTitle"
														value="" placeholder="10자 이내 입력을 권장합니다." />
												</div>
											</div>

											<div class="space-4"></div>

											<div class="form-group">
												<label for="eventDetail"> 이벤트 내용 입력</label>

												<div>
													<textarea class="form-control" id="eventDetail" name="info"
														placeholder="할인 이벤트라면 기존가격과 할인가격 등을 입력<br>신제품이라면 이벤트의 어필 코멘트 등을 입력..."></textarea>
												</div>
											</div>
										</div>
									</div>

									<!-- Break -->
									<div class="12u$">
										<ul class="actions">
											<li><input type="submit" value="이벤트 등록 요청하기" /></li>
											<li><input type="reset" value="등록 취소" class="alt" /></li>
											<li><input type="button" value="삭제"
												class="button special" /></li>
										</ul>
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- Footer 바꼈으니 반드시 바꿔줘야 함!-->
	<jsp:include page="../footer2.jsp"></jsp:include>
	

	<!-- Scripts -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='${pageContext.servletContext.contextPath}/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script>
		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : 'Year'
		});

		$(function() {
			$("#datepicker1").datepicker();
		});
	</script>
	<script>
		$("#from").datepicker().datepicker("setDate", new Date());
		$(function() {
			var dateFormat = "mm/dd/yy", from = $("#from").datepicker({
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 2
			}).on("change", function() {
				to.datepicker("option", "minDate", getDate(this));
			}), to = $("#to").datepicker({
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 1
			}).on("change", function() {
				from.datepicker("option", "maxDate", getDate(this));
			});

			function getDate(element) {
				var date;
				try {
					date = $.datepicker.parseDate(dateFormat, element.value);
				} catch (error) {
					date = null;
				}

				return date;
			}
		});
	</script>
	
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/chosen.jquery.min.js"></script>
	
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/autosize.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/jquery.inputlimiter.min.js"></script>
	
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace-elements.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/ace.min.js"></script>
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
	<script
		src="${pageContext.servletContext.contextPath}/assets/js/bootstrap.min.js"></script>
	
	<script>
		var branchList = {};

		<c:forEach items="${branchList}" var="branch">
		branchList['${branch.no}'] = {
			no : '${branch.no}',
			name : '${branch.name}',
			tel : '${branch.tel}'
		};
		</c:forEach>

		var branchNo = $('#branchSelect').prop('value');

		var bno = document.getElementById("bno");
		var btel = document.getElementById("btel");
		bno.value = (branchList[branchNo].no);
		btel.value = (branchList[branchNo].tel);

		$('#branchSelect').on('change', function() {
			var branchNo = $(this).prop('value');

			bno.value = (branchList[branchNo].no);
			btel.value = (branchList[branchNo].tel);
		})
	</script>
	<script>
		// 이미지 파일 보여주기
		var loadFile = function(event){
			var output = document.getElementById('output');
			output.src = URL.createObjectURL(event.target.files[0]);
		};
	</script>


	<script type="text/javascript">
		jQuery(function($) {
			$('.modal.aside').ace_aside();

			$('#aside-inside-modal').addClass('aside').ace_aside({
				container : '#my-modal > .modal-dialog'
			});

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
	<script type="text/javascript">
		jQuery(function($) {
		
			if (!ace.vars['touch']) {
				$('.chosen-select').chosen({
					allow_single_deselect : true
				});
				//resize the chosen on window resize

				$(window).off('resize.chosen').on('resize.chosen', function() {
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