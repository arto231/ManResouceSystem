<%@page import="po.tb_train"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>培训管理</title>
</head>
<body>


<div class="row mt">
<div class="col-lg-12">
<div class="content-panel">
<h4><i class="fa fa-angle-right"></i>培训信息查询</h4>
<section id="unseen">
<table class="table table-bordered table-striped table-condensed">
	<tr>
		<th class='numeric'>ID</th>
		<th class='numeric'>培训人员姓名</th>
		<th class='numeric'>培训标题</th>
		<th class='numeric'>培训内容</th>
		<th class='numeric'>培训时间</th>
		<th class='numeric'>培训地址</th>
		<th class='numeric'>部门</th>
		<th class='numeric'>备注</th>
		<th class='numeric'>登记时间</th>
		<th class='numeric'>操作</th>
	</tr>

	<%
		ArrayList<tb_train> infos = (ArrayList<tb_train>) request
				.getAttribute("train_info");
		if (infos != null) {
			for (tb_train train : infos) {
				out.print(" <tr>");

				out.print(" <td>");
				out.print(train.getId());
				out.print(" </td>");
				out.print(" <td>");
				out.print(train.getTn_man());
				out.print(" </td>");
				out.print(" <td>");
				out.print(train.getTn_title());
				out.print(" </td>");
				out.print(" <td>");
				out.print(train.getTn_content());
				out.print(" </td>");
				out.print(" <td>");
				out.print(train.getTn_time());
				out.print(" </td>");
				out.print(" <td>");
				out.print(train.getTn_address());
				out.print(" </td>");
				out.print(" <td>");
				out.print(train.getTn_join());
				out.print(" </td>");
				out.print(" <td>");
				out.print(train.getTn_bz());
				out.print(" </td>");
				out.print(" <td>");
				out.print(train.getTn_recordTime());
				out.print(" </td>");
				
				out.print(" <td>");
				out.print("<a href='train_del.action?id="+train.getId()+"'>删除</a>");
				out.print(" </td>");
				out.print(" <td>");
				out.print("<a href=''>修改</a>");
				out.print(" </td>");
				out.print(" <td>");
				out.print("<a href=''>发送通知</a>");
				out.print(" </td>");
				out.print(" </tr>");

			}
		}
	%>
	
</table>
</section>
<div class="showback">
<h4><i class="fa fa-angle-right"></i><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;"></font>>>>>>>>>>>>>>>>>>>>>>>>>>>></font></h4>
<a href="http://localhost/TTest/jsp/train/trainAdd.jsp">
<button type="button" class="btn btn-default btn-lg btn-block"><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;"> 指定培训计划</font></font></button></a></div>
</div>
<!-- /content-panel --></div>
<!-- /col-lg-4 --></div>



</body>
</html>