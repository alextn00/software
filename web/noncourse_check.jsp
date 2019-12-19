<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page import="student.Student" %>
<%@ page import="Data.*" %>
<!-- 자바 클래스 사용 -->
<!DOCTYPE html>
<%
	Student student = Student.getInstance();
	Data_nonSubject d = Data_nonSubject.getInstance();
	String userID = null;
	userID = (String)session.getAttribute("userID"); //세션에 있는 userID get.
	student.setStudent_code(userID); // student에 학번 넘겨줌
	d.read_alldata(); //파일 읽어오기
	int engscore = d.getExamScore();
	int consult = d.getCounseling_number();
	String experiment[] = d.getField_content();
%>
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
			 <li><a href="course_check.jsp">교과정보확인</a></li>
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
 </nav>
 <!-- 과목 추가 -->
<div class = "modal-dialog">
	<div class = "modal-content">
		<div class = "modal-header">
			<h1 style="text-align: center;">비교과 확인</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-label="Close">
			</button>
		</div>
		<div class = "modal-body">
			<form action = "noncourse_modify.jsp" method = "post">
				<div class = "form-row">
						토익성적<input type="text" class = "form-control" name="english" placeholder="TOEIC" maxlength="20" disabled = "disabled" value="<%= engscore %>">
				</div>
				현장학습
				<form>
					<% for(int idx=1; idx < experiment.length; idx++) { // jsp 속에서 for문 사용
					%>
					<input type="text" class = "form-control" name="experience" placeholder="없음" maxlength="50" disabled = "disabled" value="<%= experiment[idx] %>">
					<%
						}
					%>
				</form>
				<div>
				</div>
				<div class = "form-row">
						 상담 횟수<input type="text" class = "form-control" name="consult" placeholder="없음" maxlength="20" disabled = "disabled" value="<%= consult %>">
				</div>
				<div class = "modal-footer">
                    <button type = "submit" class = "btn btn-primary" onclick = "noncourse_modify.jsp"> 수정 </button>
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