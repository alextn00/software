<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>�л���°����ý���</title>
</head>

<body>
 <!-- �׺���̼� -->>
 <nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed" 
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expaned="false">

     <span class="icon-bar"></span>
     <span class="icon-bar"></span>

    </button>
    <a class="navbar-brand" href="login.jsp">�л���°����ý���</a>

  </div>
  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
   <ul class="nav navbar-nav">
    <li><a href="personal_check.jsp">��������Ȯ��</a></li>
    <li><a href="course_check.jsp">��������Ȯ��</a></li>
    <li><a href="graduation_criteria.jsp">�����������Ȯ��</a></li>
   </ul>
     <ul class="nav navbar-nav navbar-right">
      <li class="dropdown">
        <a href="#" class="dropdown-toggle"
           data-toggle="dropdown" role="button" aria-haspopup="true"
           aria-expanded="false"><span class="caret"></span></a>
         <ul class="dropdown-menu">
          <li><a href="course_check.jsp">���� ���� Ȯ��</a></li>
          <li><a href="course_add.jsp">���� ���� ����</a></li>
          <li><a href="noncourse_check.jsp">�񱳰� ���� Ȯ��</a></li>
          <li><a href="noncourse_modify.jsp">�񱳰� ���� ����</a></li>
          <li><a href="logout.jsp">�α׾ƿ�</a></li>
        </ul>
      </li>
    </ul>
  </div> 
 </nav>
 
 <!-- ���� �߰� -->
<div class = "modal-dialog">
	<div class = "modal-content">
		<div class = "modal-header">
			<h1 style="text-align: center;">���� �߰�</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-lable = "Close">
			</button>
		</div>
		
		<div class = "modal-body">
			<form action = "course_add.jsp" method = "post">
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						<label> ���� �⵵ </label>
						<select name = "lectureYear" class = "form-control">
						<option value="2011">2011</option>
                    	<option value="2012">2012</option>
	                    <option value="2013">2013</option>
	                    <option value="2014">2014</option>
	                    <option value="2015">2015</option>
	                    <option value="2016">2016</option>
	                    <option value="2017">2017</option>
	                    <option value="2018">2018</option>
	                    <option value="2019"selected>2019</option>
	                    <option value="2020">2020</option>
	                    <option value="2021">2021</option>
	                    <option value="2022">2022</option>
	                    <option value="2023">2023</option>
						</select>
					</div>
					
					<div class = "form-group col-sm-6">
						<label> ���� �б� </label>
						<select name = "lectureSemester" class = "form-control">
						<option value="1�б�">1�б�</option>
                    	<option value="�����б�">�����б�</option>
	                    <option value="2�б�"selected>2�б�</option>
	                    <option value="�ܿ��б�">�ܿ��б�</option>
	                    </select>
	                </div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						<label> ���� ���� </label>
						<select name = "selectLecture" class = "form-control">
						<option value=""selected>����</option>
						<option value="����">����</option>
                    	<option value="�⺻�Ҿ�">�⺻�Ҿ�</option>
	                    <option value="�������">�������</option>
	                    <option value="��������">��������</option>
	                    </select>
	                </div>
					
					<div class = "form-group col-sm-6">
						<label> ���� �ڵ� </label>
						<input type = "text" name = "code" class = "form-control">
					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						<label> ���� </label>
						<select name = "credit" class = "form-control">
						<option value=""selected>����</option>
						<option value="1">1</option>
                    	<option value="2">2</option>
	                    <option value="3">3</option>
	                    <option value="6">6</option>
						</select>
					</div>
					
					<div class = "form-group col-sm-6">
						<label> ���� </label>
						<select name = "grade" class = "form-control">
						<option value=""selected>����</option>
						<option value="A+">A+</option>
                    	<option value="A0">A0</option>
	                    <option value="A-">A-</option>
	                    <option value="B+">B+</option>
	                    <option value="B0">B0</option>
                    	<option value="B-">B-</option>
	                    <option value="C+">C+</option>
	                    <option value="C0">C0</option>
	                    <option value="C-">C-</option>
	                    <option value="D+">D+</option>
	                    <option value="D0">D0</option>
	                    <option value="D-">D-</option>
	                    <option value="F">F</option>
	                    </select>
	                </div>
				</div>
				
				<div class = "form-group">
					<label>�����</label>
					<input type = "text" name = "lectureName" class = "form-control" maxlength = "20">
				</div>
				
				 <div class = "modal-footer">
			    	<button type = "button" class = "btn btn-secondary"> ��� </button>
			    	<button type = "submit" class = "btn btn-primary"> ����</button>
			    </div>
			</form>
		</div>
	</div>
</div>
</body>
</html>