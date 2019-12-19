<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- 뷰포트 -->
  <meta name="viewport" content="width=device-width" initial-scale="1">
  <!-- 스타일시트 참조  -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <title>학생경력정보시스템</title>
</head>
<body>
<!-- 네비게이션  -->
<nav class="navbar navbar-default">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expaned="false">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
      <a class="navbar-brand">학생경력관리시스템</a>
  </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <!-- Link 메뉴 -->

            <!-- DropDown 형식의 메뉴 -->
        </ul>
    </div>
  </div>

</nav>
<!-- 로긴폼 -->
<div class="container">
  <div class="col-lg-4"></div>
  <div class="col-lg-4">
    <!-- 점보트론 -->
    <div class="jumbotron" style="padding-top: 20px;">
      <!-- 로그인 정보를 숨기면서 전송post -->
      <form method="post" action="loginAction.jsp">
        <h3 style="text-align: center;"> 학생경력관리시스템 </h3>

        <div class="form-group">
          <input type="text" class="form-control" placeholder="학번" name="userID" maxlength="20">
        </div>
        <div class="form-group">
          <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
        </div>
          <div class = "modal-footer">
              <button type = "submit" class = "btn btn-primary" onclick = "loginAction.jsp"> 로그인</button>
          </div>

초기비밀번호는 생년월일입니다.

      </form>
    </div>
  </div>
</div>
<!-- 애니매이션 담당 JQUERY -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 부트스트랩 JS  -->
<script src="js/bootstrap.js"></script>
</body>
</html>