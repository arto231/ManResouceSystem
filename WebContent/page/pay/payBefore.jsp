<%@page import="po.tb_pay"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>薪酬管理</title>
</head>
<body>

<div class="row mt">
<div class="col-lg-12">
<div class="content-panel">
<h4><i class="fa fa-angle-right"></i>薪酬信息查询</h4>
<section id="unseen">
<table class="table table-bordered table-striped table-condensed">
	<tr>
		<th class='numeric'>员工编号</th>
		<th class='numeric'>员工姓名</th>
		<th class='numeric'>当前月份</th>
		<th class='numeric'>基本工资</th>
		<th class='numeric'>加班费</th>
		
		<th class='numeric'>工龄费</th>
		<th class='numeric'>考勤费</th>
		<th class='numeric'>旷工费</th>
		<th class='numeric'>保险费</th>
		<th class='numeric'>实发工资</th>
		<th class='numeric'>操作</th>
		


	</tr>

	<%
		ArrayList<tb_pay> payInfos = (ArrayList<tb_pay>) request
				.getAttribute("pay_info");

		if (payInfos.size() > 0) {
			for (tb_pay p : payInfos) {
				out.print("<tr>");
				out.print("<td>");
				out.print(p.getPay_emNumber()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				out.print(p.getPay_emName()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				
				out.print(p.getPay_month()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				out.print(p.getPay_baseMoney()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				out.print(p.getPay_overtime()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				out.print(p.getPay_age()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				out.print(p.getPay_check()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				out.print(p.getPay_absent()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				out.print(p.getPay_safety()+"&nbsp");
				out.print("</td>");
				out.print("<td>");
				out.print("工资&nbsp");
				out.print("</td>");
				
				out.print("<td>");
				out.print("<a href='pay_del.action?id="+p.getId()+"'"+">删除</a>");
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
<a href="#">
<button type="button" class="btn btn-default btn-lg btn-block"><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;">添加薪资信息</font></font></button></a></div>
</div>
<!-- /content-panel --></div>
<!-- /col-lg-4 --></div>
<br>
</body>
</html>