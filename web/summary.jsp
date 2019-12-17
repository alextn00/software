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
			<h1 style="text-align: center;">요약</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-lable = "Close">
			</button>
		</div>
		
		<div class = "modal-body">
			<form action = "course_check.jsp" method = "post">
			<table width = "500" align = "center">
					<th>학기구분</th>
	                <th>평균학점</th>
	                <th>취득학점</th>
	               
	                <tr>
	                	<td><input type="text" class = "form-control" placeholder="4/8" disabled = "disabled"></td>
	               		<td><input type="text" class = "form-control" placeholder="3.5/4.3" disabled = "disabled"></td>
	               		<td><input type="text" class = "form-control" placeholder="70/150" disabled = "disabled"></td>
	               	</tr>
            	</table>
            	<br><br>
            	
				 <div class = "modal-footer">
			    	<button type = "button" class = "btn btn-secondary"> 취소 </button>
			    	<button type = "submit" class = "btn btn-primary"> 저장</button>
			    </div>
			</form>
		</div>
	</div>
</div>
 <div class="modal-dialog">
     <div class="modal-content">
         <div class="modal-header">
             <h1 style="text-align: center;"></h1>
             <button type="button" class="close" data-dismiss="modal" aria-lable="Close">
             </button>
         </div>

         <div class="modal-body">
             <form method="post">
                 <table width="500" align="center">
                     <tbody>
                     <tr>
                         <td>
                             <jsp:include page="charttest.jsp" flush="false"/>
                         </td>
                     </tr>
                     </tbody></table>
                 <br><br>

                 <div class="modal-footer">
                     <button type="button" class="btn btn-secondary"> 취소 </button>
                     <button type="submit" class="btn btn-primary"> 저장 </button>
                 </div>
             </form>
         </div>
     </div>
 </div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
<script src="js/bootstrap.js"></script>
</body>
</html>
