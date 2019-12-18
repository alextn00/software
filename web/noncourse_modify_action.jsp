<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<%@ page buffer="100kb" %>
<%@ page import="student.Student" %>
<%@ page import="Data.*" %>
<%@ page import="carrer.nonSubject.*" %>
<%@ page import="carrer.nonSubject.field_practice" %>
<!-- request.setCharacterEncoding("UTF-8"); -->
<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>학생경력정보시스템</title>
</head>
<body>
<%!
    private Object consult;
%><%
    try {
        Student student = Student.getInstance(); //인스턴스 생성
        String userID = null;
        userID = (String)session.getAttribute("userID");
        student.setStudent_code(userID);
        student.setTrack();
        student.getData();
        Data_nonSubject d = Data_nonSubject.getInstance();
        data_curriculum p = data_curriculum.getInstance();
        graduation_requirement g = graduation_requirement.getInstance();
        field_practice a = new field_practice();
        String consult = request.getParameter("consult");
        a.change_nonSubjectActivity(consult);

        // counseling_history history = null;
      //  String userID = null;
      //  userID = (String)session.getAttribute("userID"); // session에 존재하는 학번 넘겨 java 소스코드로 넘겨 처리하기 위한 사전작업
       // student.setStudent_code(userID);
      //  d.read_alldata(); // 목록갱신.
       // String english = request.getParameter("english");
       // int engscore = Integer.parseInt(english);
        // 영어성적 입력 추가 필요
        //String experience = request.getParameter("experience");
        // experience 추가 필요



        PrintWriter outter = response.getWriter();
        outter.println("<script>");
        outter.println("alert('저장되었습니다')");
        outter.println("history.back()");
        outter.println("</script>");

    }catch (Exception e){
        e.printStackTrace();
    }

%>


</body>
</html>
