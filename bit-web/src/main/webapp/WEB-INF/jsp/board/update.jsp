<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판 글 작성</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/assets/css/font-awesome.min.css" />
<!-- text fonts -->
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/assets/css/fonts.googleapis.com.css" />

<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/assets/css/board.css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet" />
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
<!-- Favicon and touch icons -->
<link rel="icon" href="${pageContext.servletContext.contextPath}/resources/ico/home_iot.png">
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
      <li><a href="elements.html">빅데이터</a></li>
      <li><a href="noticeboard.html">게시판</a></li>
      <li><a href="index_admin.html">Admin Only</a></li>
    </ul>
  </nav>

  <div class="container" style="padding-top: 100px;">
    <h3 class="header" style="color: tomato">게시판 글 수정하기</h3>
    <form action="insert" class="boardSubmit" method="post"
      enctype="multipart/form-data">
      <table class="table table-bordered">
        <tr>
          <th>작성자</th>
          <td><input type="text" name="boardwriter" class="form-control" value="${board.boardId}" /></td>
        </tr>
        <tr>
          <th>글 제목</th>
          <td><input type="text" name="boardSubject" class="form-control" value="${board.boardTitle}" /></td>
        </tr>
        <tr>
          <th>글 내용</th>
          <!-- 기존에 작성한 글의 정보를 가져와서 출력 -->
          <td><textarea class="form-control" id="summernote"
              name="boardContent" placeholder="${board.boardContent}" maxlength="140" rows="7">${board.boardContent}</textarea>
          </td>
        </tr>
        <tr>
          <th>파일첨부</th>
          <td>
            <div class="fileForm">
              <input type="file" name="file" />
            </div>
          </td>
        </tr>
      </table>

      <button class="btn btn-primary" type="submit">수정하기 적용</button>
      <button type="button" class="btn btn-danger" onclick="">취소</button>
      <button type="button" class="btn btn-warning" name="" id="">목록으로</button> <!-- 클릭시 noticeboard.html의 <div clsss="container" id="main">으로 -->
    </form>
  </div>
  
  <!-- Footer -->
  <footer id="footer">
    <div class="copyright">
      <ul class="icons">
        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
        <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
        <li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
      </ul>
      <p>&copy; Untitled. All rights reserved. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.</p>
    </div>
  </footer>
  
  <script>
    $(document)
        .ready(
            function() {
              var sendFile = function(file, el) {
                var form_data = new FormData();
                form_data.append('file', file);
                $
                    .ajax({
                      data : form_data,
                      type : "POST",
                      url : 'c:/webupload',
                      cache : false,
                      contentType : false,
                      enctype : 'multipart/form-data',
                      processData : false,
                      success : function(url) {
                        $('#summernote').summernote(
                            'insertImage', url);
                        $('#imageBoard > ul')
                            .append(
                                '<li><img src="'+ url +'" width="480" height="auto"/></li>');
                      }
                    });
              }
              $('#summernote')
                  .summernote(
                      {
                        height : 300,
                        minHeight : null,
                        maxHeight : null,
                        focus : true,
                        callbacks : {
                          onImageUpload : function(
                              file, editor,
                              welEditable) {
                            for (var i = files.length - 1; i >= 0; i--) {
                              sendFile(files[i],
                                  this);
                            }
                          }
                        }
                      });
            });
  </script>
  <script>
    $(document)
        .ready(
            function() {
              $('.fileAdd')
                  .click(
                      function() {
                        if ($('.fileForm').children().length >= 5) {
                          alert("파일은 5개 까지만 추가 가능합니다.");
                        } else {
                          $('.fileForm')
                              .append(
                                  '<input type="file" name="file"/>');
                        }
                      })
            });
  </script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/js/jquery.scrolly.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/js/jquery.scrollex.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/js/skel.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/js/util.js"></script>
  <script src="${pageContext.servletContext.contextPath}/resources/assets/js/main.js"></script>
</body>
</html>