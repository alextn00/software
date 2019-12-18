<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*, org.apache.poi.hssf.usermodel.*, Data.*" %><!-- 클래스 import -->
<%@ page buffer="100kb" %>
<%@ page import="student.Student" %>
<%@ page import="user.User" %>
<%@ page import="Data.*" %>
<%@ page import="carrer.nonSubject.field_practice" %>
<!DOCTYPE html>
<%
    try {
        Student student = Student.getInstance(); //인스턴스 생성
        Data_nonSubject d = Data_nonSubject.getInstance();
        data_curriculum p = data_curriculum.getInstance();
        graduation_requirement g = graduation_requirement.getInstance();
        field_practice a = new field_practice();
        String userID = null;
        userID = (String)session.getAttribute("userID"); // session에 존재하는 학번 넘겨 java 소스코드로 넘겨 처리하기 위한 사전작업
        student.setStudent_code(userID);
        d.read_alldata(); // 목록갱신.
        String engpara = null;
        //영어성적 get
        grade = request.getParameter("grade");
        int engscore = Integer.parseInt(engpara);
        d.setExamScore(engscore);
    }catch (Exception e){
        e.printStackTrace();
    }

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>학생경력정보시스템</title>
</head>
<body>

</body>
</html>