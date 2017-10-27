<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../../js/checkjs.js"></script>
<title>添加奖惩信息</title>
</head>

<body>
<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h2>输入奖惩信息</h2></font></font></h4>

<form action="cj_add.action" id="cj_add">
<table>
	<tr>
		<td>奖惩标题</td>
		<td><input type="text" name="cj_title" id="cj_title"></td>
	</tr>
	<tr>
		<td>奖惩种类</td>
		<td>奖励<input type="radio" name="cj_type" value="奖励"
			checked="checked">惩罚<input type="radio" value="惩罚"
			name="cj_type"></td>
	</tr>
	<tr>
		<td>具体内容</td>
		<td><input type="text" name="cj_content" id="cj_content"></td>
	</tr>
	<tr>
		<td>金额</td>
		<td><input type="text" name="cj_money" id="cj_money"></td>
	</tr>
	<tr>
		<td>具体时间</td>
		<td><input type="text" name="cj_time" id="cj_time"></td>
	</tr>
	<tr>
		<td>----</td>
		<td><input type="button" value="确认">
		<input type="hidden" id="post_url" value="cj_add.action">
		<input type="hidden" id="load_url" value="cj_querry.action">
		</td>
	</tr>


</table>

</form>

</div></div></div>
</body>

<a href="cj_querry.action">返回</a>
</html>