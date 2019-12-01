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
    <li><a href="graduation-criteria.jsp">�����������Ȯ��</a></li>
   </ul>
     <ul class="nav navbar-nav navbar-right">
      <li class="dropdown">
        <a href="#" class="dropdown-toggle"
           data-toggle="dropdown" role="button" aria-haspopup="true"
           aria-expanded="false"><span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="graduation_criteria.jsp">�����������Ȯ��</a></li>
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
			<h1 style="text-align: center;">���� ��� ���� Ȯ��</h1>
			<button type = "button" class = "close" data-dismiss = "modal" aria-lable = "Close">
			</button>
		</div>
		
		<div class = "modal-body">
			<form action = "graduation_check.jsp" method = "post">
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						����Ʈ�� <input type="text" class = "form-control" name="majortrack" placeholder="��ȭ��ǻ�Ͱ���" maxlength="20" disabled = "disabled">
   					</div>
   					
   					<div class = "form-group col-sm-6">
   						�۷ι����� <input type="text" class = "form-control" name="global" placeholder="����" maxlength="5" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
					�� �̼� ���� <input type="text" class = "form-control" name="coursehap" placeholder="����" maxlength="20" disabled = "disabled">
	                </div>
					
					<div class = "form-group col-sm-6">
						���â������ <input type="text" class = "form-control" name="startup" placeholder="����" maxlength="20" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						���� <input type="text" class = "form-control" name="refinement" placeholder="����" maxlength="20" disabled = "disabled">
   					</div>
					
					<div class = "form-group col-sm-6">
	                	�ʼ� �������� �̼� <input type="text" class = "form-control" name="essential" placeholder="����" maxlength="20" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						�⺻�Ҿ� <input type="text" class = "form-control" name="basic" placeholder="����" maxlength="20" disabled = "disabled">
					</div>
					
					<div class = "form-group col-sm-6">
	                	����� <input type="text" class = "form-control" name="english" placeholder="����" maxlength="20" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						�������<input type="text" class = "form-control" name="majorbase" placeholder="����" maxlength="20" disabled = "disabled">	
					</div>
					
					<div class = "form-group col-sm-6">
	                	���� �ǽ� <input type="text" class = "form-control" name="experience" placeholder="����" maxlength="20" disabled = "disabled">
   					</div>
				</div>
				
				<div class = "form-row">
					<div class = "form-group col-sm-6">
						�������� <input type="text" class = "form-control" name="engineering" placeholder="����" maxlength="20" disabled = "disabled">
					</div>
					
					<div class = "form-group col-sm-6">
      					 ��� Ƚ�� <input type="text" class = "form-control" name="consult" placeholder="����" maxlength="20" disabled = "disabled">
  					</div>
				</div>
				            
            	<div class = "modal-footer">
             		<button type = "button" class = "btn btn-secondary"> ��� </button>
             		<button type = "submit" class = "btn btn-primary"> Ȯ��</button>
          		</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>