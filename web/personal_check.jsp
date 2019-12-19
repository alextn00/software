<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="student.Student" %>

<!DOCTYPE html>

<%
    int choose;
    Student student = new Student();
    String userID = null;
    String curri = null;
    String birthday = null;
    String emailday = null;
    userID = (String)session.getAttribute("userID");
    student.setStudent_code(userID);
    student.setUserInformation();
    birthday = request.getParameter("birth");
    if(birthday==null)
        birthday = student.getBirthday();
    curri = request.getParameter("major");
    if(curri==null)
        curri = student.getTrack();
    else{
        choose = Integer.parseInt(curri);
        switch (choose){
            case 1:
                curri = "심화컴퓨터공학전공";
                break;
            case 2:
                curri = "글로벌SW전공-다중전공트랙";
                break;
            case 3:
                curri = "글로벌SW전공-해외복수학위트랙";
                break;
            case 4:
                curri = "글로벌SW전공-학석사연계트랙";
                break;
            case 5:
                curri = "연계전공-비즈니스인텔리전스";
                break;
            case 6:
                curri = "연계전공-디지털정보관리";
                break;
            case 7:
                curri = "연계전공-IT정치";
                break;
            case 8:
                curri = "연계전공-심리정보";
                break;
            case 9:
                curri = "연계전공-스마트팜공학";
                break;
            case 10:
                curri = "연계전공-생물정보학";
                break;
            case 11:
                curri = "복수전공";
                break;
            case 12:
                curri = "부전공";
                break;
            case 13:
                curri = "외국인-복수전공";
                break;
            case 14:
                curri = "외국인-교환전공";
                break;
            default:
                break;


        }
    }
    emailday = request.getParameter("emailid");
    if(emailday ==null)
        emailday = student.getEmail();

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

            <form method="post" action="personal_modify.jsp">
                <h3 style="text-align: center;"> 개인정보 확인 </h3>


                <div class = "form-group">
                    학번 <input type="text" class = "form-control" name="id" placeholder="학번" maxlength="20" disabled = "disabled" value="<%= userID %>">
                    전공 <input type="text" class = "form-control" name="major" placeholder="전공" maxlength="20" disabled = "disabled" value="<%= curri %>">
                    생년월일 <input type="text" class = "form-control" name="birth" placeholder="생년월일" maxlength="20" disabled = "disabled" value="<%= birthday %>">
                    이메일<input type="text" class = "form-control" name="email" placeholder="이메일" maxlength="40" disabled = "disabled" value="<%= emailday %>">
                </div>

                <div class = "modal-footer">
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
