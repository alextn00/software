 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width" initial-scale="1">
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
   <a class="navbar-brand" href="summary.jsp">학생경력관리시스템</a>


 <div class="container">
  <div class="col-lg-4"></div>
  <div class="col-lg-4">
  <div class="jumbotron" style="padding-top: 20px;">
   
   <form method="post" action="login.jsp">
    <h2 style="text-align: center;"> 비밀번호 찾기 </h2>
    
    <div class="form-group">
     <input type="text" class="form-control" placeholder="학번" name="userID" maxlength="20">
    </div>

    <div class="form-group">
     <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
    </div>
    
    <div class="form-group">
     <input type="text" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
    </div>
    
    <button type = "button" class = "btn btn-primary form-control"> 비밀번호 발급 </button>
    </div>
    
   </form>
  </div>
 </div>
</div>
 </nav>
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
 <script src="js/bootstrap.js"></script>

</body>
</html>
