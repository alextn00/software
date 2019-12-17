<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*, org.apache.poi.hssf.usermodel.*, Data.*" %><!-- 클래스 import -->
<%@ page buffer="100kb" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>학생경력정보시스템</title>
</head>
<body>
<%
    try {
        Data_nonSubject nonsubject = new Data_nonSubject();
        int examscore = nonsubject.getExamScore();
    }
    catch(Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>