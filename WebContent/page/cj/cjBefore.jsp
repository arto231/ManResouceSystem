<%@page import="po.tb_cj"%>
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
  <tr>
    <th class='numeric'>#</th>
    <th class='numeric'>标题</th>
    <th class='numeric'>种类</th>
    <th class='numeric'>具体内容</th>
    <th class='numeric'>金额</th>
    <th class='numeric'>事件时间</th>
    <th class='numeric'>录入时间</th>
    <th class='numeric'>操作</th>
  </tr>
  
  
 <%
		ArrayList<tb_cj> payInfos = (ArrayList<tb_cj>) request
				.getAttribute("cj_info");

		if (payInfos.size() > 0) {
			for (tb_cj p : payInfos) {
				out.print("<tr>");
				out.print("<td class='numeric'>");
				out.print(p.getId()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(p.getCj_title()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				
				out.print(p.getCj_type()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(p.getCj_content()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(p.getCj_money()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(p.getCj_time()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print(p.getCj_recordTime()+"&nbsp");
				out.print("</td>");
				out.print("<td class='numeric'>");
				
				
				out.print("<td class='numeric'>");
				out.print("<a href='cj_del.action?id="+p.getId()+"'"+">删除</a>");
				out.print("</td>");
				out.print("<td class='numeric'>");
				out.print("<a href=''"+">修改</a>");
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
<a href="../cj/cjAdd.jsp">
<button type="button" class="btn btn-default btn-lg btn-block"><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;">添加</font></font></button></a></div>
</div>
</div>
</div>




</body>
</html>