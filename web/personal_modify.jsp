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
                     <li><a href="personal_check.jsp">개인정보 확인</a></li>
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
   
   <form method="post" action="personal_check.jsp">
    <h3 style="text-align: center;"> 개인정보 수정 </h3>
    
    <div class = "form-group">
      	학번 <input type="text" class = "form-control" name="id" placeholder="2018111111" maxlength=20 disabled = "disabled">
    	변경할 비밀번호 <input type="password"  class = "form-control" name="userPassword" maxlength="20">
   		비밀번호 확인 <input type="password"  class = "form-control" name="userCheckPassword" maxlength="20">
   		이름 <input type = "text" class = "form-control" name = "name" maxlength = "20">
   		전공 <select name = "major" class = "form-control">
   			<option value = ""> 선택 </option>
   			<option value="01" >심화컴퓨터공학전공</option>
            <option value="02" >글로벌SW전공-다중전공트랙</option>
            <option value="03" >글로벌SW전공-해외복수학위트랙</option>
            <option value="04" >글로벌SW전공-학석사연계트랙</option>
            <option value="05" >연계전공-비즈니스인텔리전스</option>
            <option value="06" >연계전공-디지털정보관리</option>
            <option value="07" >연계전공-IT정치</option>
            <option value="08" >연계전공-심리정보</option>
            <option value="09" >연계전공-스마트팜공학</option>
            <option value="10" >연계전공-생물정보학</option>
            <option value="11" >복수전공</option>
            <option value="12" >부전공</option>
            <option value="13" >외국인-복수전공</option>
            <option value="14" >외국인-교환전공</option>
   			</select>
   		생년월일 <input type="text" class = "form-control" name="birth" placeholder="19980510" maxlength=20 disabled = "disabled">
   	</div>
   	
   	<div class = "form-row">
		<div class = "form-group col-sm-6">
			이메일
			<input type = "text" name = "emailid" class = "form-control"> 
		</div>
		
		<div class = "form-group col-sm-6">
			이메일 주소
			<select name = "page" class = "form-control">
	   		<option value = ""> 이메일 주소 선택 </option>
	   		<option>@naver.com</option>
	   		<option>@gmail.com</option>
	   		<option>@knu.ac.kr</option>
	   		</select>	
	    </div>
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
 <script src="js/bootstrap.js"></script>

</body>
</html>
