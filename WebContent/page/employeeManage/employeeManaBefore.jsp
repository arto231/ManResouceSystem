<%@page import="po.tb_employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工管理</title>
</head>
<body>
<div class="row mt">
<div class="col-lg-12">
<div class="content-panel">
<h4><i class="fa fa-angle-right"></i>员工信息查询</h4>
<section id="unseen">
<table class="table table-bordered table-striped table-condensed">
	<thead>

		<tr>
			<th class="numeric">员工编号</th>
			<th class="numeric">姓名</th>
			<th class="numeric">性别</th>
			<th class="numeric">年龄</th>
			<th class="numeric">出生日期</th>

			<th class="numeric">部门</th>
			<th class="numeric">工种</th>
			<th class="numeric">学历</th>
			<th class="numeric">参加工作时间</th>
			<th class="numeric">联系电话</th>
			<th class="numeric">登记时间</th>
			<th class="numeric">操作</th>
			<th></th>


		</tr>
	</thead>
	<%
		ArrayList<tb_employee> employeeInfos = (ArrayList<tb_employee>) request
				.getAttribute("employee_info");

		if (employeeInfos.size() > 0) {
			for (tb_employee e : employeeInfos) {
				out.print("<tr>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_serialNumber()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_name()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_sex()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_age()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_born()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_departmentId()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_typeWork()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_culture()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_startime()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_tel()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(e.getEm_registerDate()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print("<a href='employeedel.action?id="+e.getId()+"'"+">删除</a>");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print("<a href='employeegetupdateInfo.action?id="+e.getId()+"'"+">修改</a>");
				out.print("</td>");

				out.print("</tr>");

			}
		}
	%>
</table>
</section>
<div class="showback">
<h4><i class="fa fa-angle-right"></i><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;"></font></font></h4>
<a href="employeeaddgetdata.action">
<button type="button" class="btn btn-default btn-lg btn-block"><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;">添加员工信息</font></font></button></a></div>
</div>
<!-- /content-panel --></div>
<!-- /col-lg-4 --></div>



</body>
</html>