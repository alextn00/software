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
					<li><a href="graduation_criteria.jsp">졸업요건충족확인</a></li>
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
			<h1 style="text-align: center;">졸업 요건 충족 확인</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-lable = "Close">
			</button>
		</div>
		
		<div class = "modal-body">
			<form action = "graduation_check.jsp" method = "post">
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						전공트랙 <input type="text" class = "form-control" name="majortrack" placeholder="심화컴퓨터공학" maxlength="20" disabled = "disabled">
   					</div>
   					
   					<div class = "form-group col-sm-6">
   						글로벌역량 <input type="text" class = "form-control" name="global" placeholder="충족" maxlength="5" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
					총 이수 학점 <input type="text" class = "form-control" name="coursehap" placeholder="충족" maxlength="20" disabled = "disabled">
	                </div>
					
					<div class = "form-group col-sm-6">
						기술창업역랑 <input type="text" class = "form-control" name="startup" placeholder="충족" maxlength="20" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						교양 <input type="text" class = "form-control" name="refinement" placeholder="충족" maxlength="20" disabled = "disabled">
   					</div>
					
					<div class = "form-group col-sm-6">
	                	필수 전공과목 이수 <input type="text" class = "form-control" name="essential" placeholder="충족" maxlength="20" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						기본소양 <input type="text" class = "form-control" name="basic" placeholder="충족" maxlength="20" disabled = "disabled">
					</div>
					
					<div class = "form-group col-sm-6">
	                	영어성적 <input type="text" class = "form-control" name="english" placeholder="충족" maxlength="20" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						전공기반<input type="text" class = "form-control" name="majorbase" placeholder="충족" maxlength="20" disabled = "disabled">	
					</div>
					
					<div class = "form-group col-sm-6">
	                	현장 실습 <input type="text" class = "form-control" name="experience" placeholder="충족" maxlength="20" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						공학전공 <input type="text" class = "form-control" name="engineering" placeholder="충족" maxlength="20" disabled = "disabled">
					</div>
					
					<div class = "form-group col-sm-6">
      					 상담 횟수 <input type="text" class = "form-control" name="consult" placeholder="충족" maxlength="20" disabled = "disabled">
  					</div>
				</div>
				            
            	<div class = "modal-footer">

             		<button type = "submit" class = "btn btn-primary"> 확인</button>
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