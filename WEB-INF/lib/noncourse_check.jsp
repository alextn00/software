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
			<h1 style="text-align: center;">�񱳰� Ȯ��</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-lable = "Close">
			</button>
		</div>
		
		<div class = "modal-body">
			<form action = "noncourese_modify.jsp" method = "post">
				<div class = "form-row">
						���� ���� ����<input type="text" class = "form-control" name="english" placeholder="TOEIC 900" maxlength="20" disabled = "disabled" >
				</div>
				
				<div class = "form-row">
						���� ����<input type="text" class = "form-control" name="volunteer" placeholder="2019.11.20, XXX, 5" maxlength="20" disabled = "disabled">
	            </div>
				
				<div class = "form-row">
						�ڰ��� ����<input type="text" class = "form-control" name="license" placeholder="��ǻ��Ȱ��ɷ� 1��, 2019.11.29" maxlength="20" disabled = "disabled">
   				</div>
   				
				<div class = "form-row">
						 ����ǽ� ����<input type="text" class = "form-control" name="experience" placeholder="XX, 2019-09~2019-12" maxlength="20" disabled = "disabled">
				</div>
					
				<div class = "form-row">
						 ��� Ƚ��<input type="text" class = "form-control" name="consult" placeholder=" 8 " maxlength="20" disabled = "disabled">
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