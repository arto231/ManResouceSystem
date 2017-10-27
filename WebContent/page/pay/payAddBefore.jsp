<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加薪酬信息</title>
</head>
<body>
<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h2>输入员工信息</h2></font></font></h4>
<% String info=(String)request.getAttribute("info"); 
		if(info!=null){out.print(info);}else{
			out.print("输入有误，检查你的输入");
		}
		%>
		</div></div></div>
</body>
</html>