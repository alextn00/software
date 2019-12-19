
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="Data.*" %><!-- 클래스 import -->
<%@ page buffer="100kb" %>
<%@ page import="student.Student" %>
<%@ page import="carrer.nonSubject.field_practice" %>
<%
    int engscore = 0;
    try {
        Student student = Student.getInstance(); //인스턴스 생성
        Data_nonSubject d = Data_nonSubject.getInstance();
        data_curriculum p = data_curriculum.getInstance();
        graduation_requirement g = graduation_requirement.getInstance();
        field_practice a = new field_practice();
        String userID = null;
        userID = (String) session.getAttribute("userID"); // session에 존재하는 학번 넘겨 java 소스코드로 넘겨 처리하기 위한 사전작업
        student.setStudent_code(userID);
        d.read_alldata(); // 목록갱신.
        String engpara = null;
        //영어성적 get
        engpara = request.getParameter("english");
        engscore = Integer.parseInt(engpara);
        d.setExamScore(engscore);

    } catch (Exception e) {
        e.printStackTrace();
    }

%>
<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {packages:["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Grade', 'Score'],
                ['A+',  5],
                ['A',  2],
                ['A-', 4],
                ['B+', 3],
                ['B', 3],
                ['B-', 4],
                ['C+', 4],
                ['C', 5],
                ['C-', 5],
                ['D', 0],
                ['F', 2]
            ]);

            var options = {
                legend: 'none',
                pieSliceText: 'label',
                title: '',
                pieStartAngle: 100,
                chartArea:{left:0,top:20,width:"80%",height:"80%"}
            };


            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            chart.draw(data, options);
        }
    </script>
</head>
<body>
<div id="piechart" style="width: 350px; height: 300px;"></div>
</body>
</html>