<%@page import="po.tb_invitejob"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>招聘管理</title>
</head>
<body>


<div class="row mt">
<div class="col-lg-12">
<div class="content-panel">
<h4><i class="fa fa-angle-right"></i>招聘信息查询</h4>
<section id="unseen">
<table class="table table-bordered table-striped table-condensed">
	<tr>
		<th class='numeric'>#</th>
		<th class='numeric'>姓名</th>
		<th class='numeric'>性别</th>
		<th class='numeric'>应聘职务</th>
		<th class='numeric'>学历</th>
		<th class='numeric'>工作经验</th>
		<th class='numeric'>&nbsp</th>
		<th class='numeric'>操作</th>
		<th class='numeric'>&nbsp</th>
	</tr>
	<%
		ArrayList<tb_invitejob> in = (ArrayList<tb_invitejob>) request
				.getAttribute("wanted_info");
		if (in != null) {
			for (tb_invitejob inviteinfo : in) {
				out.print("<tr>");
				out.print("<td>");

				out.print(inviteinfo.getId() + "&nbsp");

				out.print("</td>");
				out.print("<td>");

				out.print(inviteinfo.getName() + "&nbsp");

				out.print("</td>");
				out.print("<td>");

				out.print(inviteinfo.getSex() + "&nbsp");

				out.print("</td>");
				out.print("<td>");

				out.print(inviteinfo.getJob() + "&nbsp");

				out.print("</td>");
				out.print("<td>");

				out.print(inviteinfo.getTeachSchool() + "&nbsp");

				out.print("</td>");
				out.print("<td>");

				out.print(inviteinfo.getExperience() + "&nbsp");

				out.print("</td>");
				out.print("<td>");

				out.print("<a href='getMoreInfo.action'>查看详细信息</a>");

				out.print("</td>");
				out.print("<td>");

				out.print("<a href='invitedel.action?id="+inviteinfo.getId()+"'>删除</a>");

				out.print("</td>");
				out.print("<td>");
				if (inviteinfo.getIsstock() == 0) {
					out.print("<a href='inviteupdate.action?id="+inviteinfo.getId()+"&istoken=1'>点击录用</a>");
				} else {
					out.print("<a href='inviteupdate.action?id="+inviteinfo.getId()+"&istoken=0'>已录用,点击取消</a>");
				}
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
<a href="http://localhost/TTest/jsp/inviteJob/invitejobAdd.jsp">
<button type="button" class="btn btn-default btn-lg btn-block"><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;">添加</font></font></button></a></div>
</div>
<!-- /content-panel --></div>
<!-- /col-lg-4 --></div>
</body>
</html>