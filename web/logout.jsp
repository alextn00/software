 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>학생경력관리시스템</title>
</head>

<body>
 <!-- 네비게이션  -->
 <nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed" 
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expaned="false">

     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>

    </button>
    <a class="navbar-brand" href="login.jsp">학생경력관리시스템</a>
  </div>
 </nav>

 <div class="container">
  <div class="col-lg-4"></div>
  <div class="col-lg-4">
  <div class="jumbotron" style="padding-top: 20px;">
   
   <!--< /form method="post" action="login.jsp"> -->
    <h3 style="text-align: center;"> 로그인 </h3>
    
    <div class="form-group">
     <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
    </div>

    <div class="form-group">
     <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
    </div>
    
    <li>초기 비밀번호는 생년월일입니다</li>
    
    
    <!-- 로그인 누르면 교과정보로 이동하고, 비밀번호 찾기 누르면 비밀번호찾기로 이동하도록 변경 -->
    <div class = "modal-footer">
       <button type = "submit" class = "btn btn-primary" onclick = "password_find.jsp"> 비밀번호 찾기 </button>
       <button type = "submit" class = "btn btn-primary" onclick = "course_check.jsp"> 로그인</button>
    </div>
    
   </form>
  </div>
 </div>
</div>
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 <!-- 부트스트랩 JS  -->
 <script src="js/bootstrap.js"></script>
</body>
</html>