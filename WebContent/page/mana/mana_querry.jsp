<%@page import="po.tb_manager"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>
<%
	String user = ((tb_manager) session.getAttribute("user")).getAcount();
	if (user == null) {
%><%
 	} else {
 		out.print(user + "&nbsp&nbsp");
 	}
 %>系统管理员</title>
</head>
<body>


<div class="row mt">
<div class="col-lg-12">
<div class="content-panel">
<h4><i class="fa fa-angle-right"></i>员工信息查询</h4>
<section id="unseen">
<table class="table table-bordered table-striped table-condensed">
	<tr>
		<th class='numeric'>管理员ID</th>
		<th class='numeric'>账号</th>
		<th class='numeric'>密码</th>
		<th class='numeric'>管理员等级</th>
		<th class='numeric'>注册时间</th>
		<th class='numeric'>操作</th>
	</tr>
	<%
		ArrayList<tb_manager> infos = (ArrayList<tb_manager>) request
				.getAttribute("mana_info");
		for (tb_manager info : infos) {
			out.print("<tr>");
			out.print("<td>");
			out.print(info.getId());
			out.print("</td>");
			out.print("<td>");
			out.print(info.getAcount());
			out.print("</td>");
			out.print("<td>");
			out.print(info.getPassword());
			out.print("</td>");
			out.print("<td>");
			out.print(info.getManagerLevel());
			out.print("</td>");
			out.print("<td>");
			out.print(info.getRecordDate());
			out.print("</td>");
			out.print("<td>");
			out.print("<a href='delMana.action?manaID="+info.getId()+"'>删除</a>");
			out.print("</td>");

			out.print("</tr>");
		}
	%>
</table>
</section>
</div>
<!-- /content-panel --></div>
<!-- /col-lg-4 --></div>
<br>

<br>
<a href="http://localhost:8080/TTest/jsp/mana/register.jsp">添加管理员</a>
</body>
</html>