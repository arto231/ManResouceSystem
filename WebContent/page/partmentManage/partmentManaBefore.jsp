<%@page import="po.tb_department"%>
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
<h4><i class="fa fa-angle-right"></i>部门信息查询</h4>
<section id="unseen">

<table class="table table-bordered table-striped table-condensed">
	<tr>
		<th class='numeric'>ID</th>
		<th class='numeric'>部门</th>
		<th class='numeric'>备注</th>
		<th class='numeric'>操作</th>
		<th class='numeric'></th>
	</tr>
	<%
		ArrayList<tb_department> infos = (ArrayList<tb_department>) request
				.getAttribute("department_info");
		out.print("sdsdsddsdsd"+infos.size());
		if (infos != null) {
			for (tb_department de : infos) {
				out.print("<tr>");
				out.print("<td>");
				out.print(de.getId() + "&nbsp");
				out.print("</td>");

				out.print("<td>");
				out.print(de.getDt_name() + "&nbsp");
				out.print("</td>");

				out.print("<td>");
				out.print(de.getDt_bz() + "&nbsp");
				out.print("</td>");

				out.print("<td>");
				out.print("<a href='partmentdel.action?id=" + de.getId()
						+ "'>删除</a>");
				out.print("</td>");
				out.print("<td>");
				out.print("<a href=''>添加备注信息</a>");
				out.print("</td>");
				out.print("</tr>");

			}

		}
	%>
</table>
<div class="showback">
<h4><i class="fa fa-angle-right"></i><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;"></font></font></h4>
<a href="http://localhost/TTest/jsp/partmentManage/departmentAdd.jsp">
<button type="button" class="btn btn-default btn-lg btn-block"><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;">添加部门信息</font></font></button></a></div>
</section></div>

<!-- /content-panel --></div>
<!-- /col-lg-4 --></div>
<br>
<br>




</body>
</html>