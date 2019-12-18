<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import =  "user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv = "Content-type" content = "text/html"; charset="UTF-8">
 <title>학생경력어쩌고</title>
</head>
<body>
<%
 session.invalidate();
%>
<script>
 location.href = "index.jsp"
</script>
</body>
</html>