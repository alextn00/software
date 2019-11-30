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
 <!-- 네비게이션 -->
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

  </div>
     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
             <!-- Link 메뉴 -->
             <li><a href="personal_check.jsp">개인정보확인</a></li>
             <li><a href="course_check.jsp">학적정보확인</a></li>
             <li><a href="graduation_criteria.jsp">졸업요건충족확인</a></li>
             <li><a href="logout.jsp">로그아웃</a></li>
             <!-- DropDown 형식의 메뉴 -->
         </ul>
         <ul class="nav navbar-nav navbar-right">
             <li class="dropdown">
                 <a href="#" class="dropdown-toggle"
                    data-toggle="dropdown" role="button" aria-haspopup="true"
                    aria-expanded="false">메뉴<span class="caret"></span></a>
                 <ul class="dropdown-menu">
                     <li><a href="course_add.jsp">교과 정보 수정</a></li>
                     <li><a href="noncourse_check.jsp">비교과 정보 확인</a></li>
                     <li><a href="noncourse_modify.jsp">비교과 정보 수정</a></li>
                     <li><a href="personal_modify.jsp">개인정보 수정</a></li>
                 </ul>
             </li>
         </ul>
     </div>
     </div>
 </nav>
 
 <!-- 개인정보확인 -->
 <div class="container">
  <div class="col-lg-4"></div>
  <div class="col-lg-4">
   <div class="jumbotron" style="padding-top: 20px;">
   
   <form method="post" action="personal_modify.jsp">
    <h3 style="text-align: center;"> 개인정보 확인 </h3>
    
    
    <div class = "form-group">
      	학번 <input type="text" class = "form-control" name="id" placeholder="2018111111" maxlength="20" disabled = "disabled">
   		이름 <input type="text" class = "form-control" name="name" placeholder="이재욱" maxlength="20" disabled = "disabled">
   		전공 <input type="text" class = "form-control" name="major" placeholder="심화컴퓨터공학전공" maxlength="20" disabled = "disabled">
   		생년월일 <input type="text" class = "form-control" name="birth" placeholder="980510" maxlength="20" disabled = "disabled">
   		이메일<input type="text" class = "form-control" name="email" placeholder="hitodaysub@naver.com" maxlength="20" disabled = "disabled">
   	</div>
   	
    <div class = "modal-footer">
    	<button type = "button" class = "btn btn-secondary"> 취소 </button>
    	<button type = "submit" class = "btn btn-primary"> 수정</button>
    </div>
    
   </form>
  </div>
 </div>
</div>

 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
 <script src="js/bootstrap.js"></script>

</body>
</html>
