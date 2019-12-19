<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<%@ page buffer="100kb" %>
<%@ page import="student.Student" %>
<%@ page import="Data.*" %>
<%@ page import="carrer.nonSubject.field_practice" %>

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
        student.getData();
        field_practice a = new field_practice();
        String consult = request.getParameter("consult");
        a.change_nonSubjectActivity(consult);
        PrintWriter outter = response.getWriter();
        outter.println("<script>");
        outter.println("alert('저장되었습니다.')");
        outter.println("location.href = 'summary.jsp'");
        outter.println("</script>");
    }catch (Exception e){
        e.printStackTrace();
    }
%>
</body>
</html>
