<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <!-- 뷰포트 -->
    <meta name="viewport" content="width=device-width" initial-scale="1">
    <!-- 스타일시트 참조  -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>학생경력정보시스템</title>
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
 학점
 <jsp:include page="charttest.jsp" flush="false"/>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
<script src="js/bootstrap.js"></script>
</body>
</html>
