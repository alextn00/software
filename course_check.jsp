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
	<div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><a href="personal_check.jsp">개인정보확인</a></li>
			<li><a href="course_check.jsp">학적정보확인</a></li>
			<li><a href="graduation_criteria.jsp">졸업요건충족확인</a></li>
			<li><a href="logout.jsp">로그아웃</a></li>
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
			<h1 style="text-align: center;">교과 정보 확인</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-lable = "Close">
			</button>
		</div>

		<div class = "modal-body">
			<form action = "course_check.jsp" method = "post">
				<table width = "570" align = "center">
					<th width = "120" colspan = "5" >첨성인기초</th>
					<th width = "50" colspan = "2">첨성인핵심</th>
					<th width = "50">첨성인일반</th>
					<th width = "40">인문교양</th>

					<tr>
						<td width = "60">독서와토론</td>
						<td width = "50">사고교육</td>
						<td width = "30">글쓰기</td>
						<td width = "40">실용영어</td>
						<td width = "20">SW</td>
						<td width = "40">인문사회</td>
						<td width = "40">자연과학</td>
					</tr>

					<tr>
						<td><input type="text" class = "form-control" placeholder="0" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="0" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="0" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="0" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="6" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="6" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="9" disabled = "disabled"></td>
						<td><input width = "20" type="text" class = "form-control" placeholder="9" disabled = "disabled"></td>
						<td><input width = "20" type="text" class = "form-control" placeholder="9" disabled = "disabled"></td>
					</tr>
				</table>
				<br><br>

				<table width = "570" align = "center">
					<th>기본소양</th>
					<th>전공기반</th>
					<th>공학전공</th>
					<th>일반교양</th>
					<th>총이수학점</th>

					<tr>
						<td><input type="text" class = "form-control" placeholder="12" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="18" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="21" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="15" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" placeholder="66" disabled = "disabled"></td>
					</tr>
				</table>
				<br><br>

				<table>
					<th width = "70">년도/학기</th>
					<th width = "100">교과구분</th>
					<th width = "130">과목코드</th>
					<th width = "130">과목명</th>
					<th width = "50">학점</th>
					<th width = "50">성적</th>

					<tr>
						<td><input type="text" class = "form-control" name="lectureDay" placeholder="20191" maxlength="10" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="selectLecture" placeholder="기본소양" maxlength="10" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="code" placeholder="CLTR090007" maxlength="10" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="lectureName" placeholder="행복한 삶과 가족" maxlength="20" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="credit" placeholder="3" maxlength="5" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="grade" placeholder="A" maxlength="5" disabled = "disabled"></td>
					</tr>

					<tr>
						<td><input type="text" class = "form-control" name="lectureDay" placeholder="20191" maxlength="10" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="selectLecture" placeholder="전공기반" maxlength="10" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="code" placeholder="COMP200001" maxlength="10" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="lectureName" placeholder="소프트웨어 설계" maxlength="20" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="credit" placeholder="3" maxlength="5" disabled = "disabled"></td>
						<td><input type="text" class = "form-control" name="grade" placeholder="A" maxlength="5" disabled = "disabled"></td>
					</tr>

				</table>


				<div class = "modal-footer">
					<button type = "button" class = "btn btn-secondary"> 취소 </button>
					<button type = "submit" class = "btn btn-primary"> 저장</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>
