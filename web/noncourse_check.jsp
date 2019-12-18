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
					 <li><a href="course_check.jsp">교과 정보 확인</a></li>
					 <li><a href="course_add.jsp">교과 정보 수정</a></li>
					 <li><a href="noncourse_check.jsp">비교과 정보 확인</a></li>
					 <li><a href="noncourse_modify.jsp">비교과 정보 수정</a></li>
				 </ul>
			 </li>
		 </ul>
	 </div>
	 </div>
 </nav>
 
 <!-- 과목 추가 -->
<div class = "modal-dialog">
	<div class = "modal-content">
		<div class = "modal-header">
			<h1 style="text-align: center;">비교과 확인</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-lable = "Close">
			</button>
		</div>
		
		<div class = "modal-body">
			<form action = "noncourese_modify.jsp" method = "post">
				<div class = "form-row">
						영어 성적 정보<input type="text" class = "form-control" name="english" placeholder="TOEIC 900" maxlength="20" disabled = "disabled" >
				</div>
   				
   				<div class="form-group">

           
				<div>
               		 현장실습 정보 <textarea type="text" name="experience" class="form-control" maxlength="2048" placeholder=" 삼성 2018-03-01 ~ 2018-06-03 &#13;&#10; LG 2019-06-01 ~ 2019-08-03 " style="height: 180px;" disabled = "disabled"></textarea>
                </div>
					
				<div class = "form-row">
						 상담 횟수<input type="text" class = "form-control" name="consult" placeholder=" 8 " maxlength="20" disabled = "disabled">
				</div>
				
            	<div class = "modal-footer">
             		<button type = "button" class = "btn btn-secondary"> 취소 </button>
             		<button type = "submit" class = "btn btn-primary"> 저장</button>
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
