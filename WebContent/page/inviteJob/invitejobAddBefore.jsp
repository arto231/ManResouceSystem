<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登记应聘信息</title>
</head>
<script src="/ManResouceSystem/js/jquery-3.2.1.min.js"></script>
<script src="/ManResouceSystem/js/myjquery.js"></script>
<script src="../../js/checkjs.js"></script>
<h2>
欢迎访问本网站</h2>
<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h2>填写您的应聘信息</h2></font></font></h4>

<form action="inviteadd.action" id="inviteadd">
<table>
<tr>
<td>您的姓名 </td>
<td><input type="text" name="name" id="name"></td>
</tr>
<tr>
<td> 性别</td>
<td><input type="radio" name="sex" value="男" checked="checked">男<input
			type="radio" name="sex" value="女">女</td>
</tr>
<tr>
<td>年龄 </td>
<td><input type="text" name="age" id="age"></td>
</tr>
<tr>
<td> 出生年月</td>
<td><input type="text" name="born" id="born"></td>
</tr>
<tr>
<td> 应聘岗位</td>
<td><input type="text" name="job" id="job"></td>
</tr>
<tr>
<td>所学专业 </td>
<td><input type="text" name="specially" id="specially"></td>
</tr>
<tr>
<td> 从业经历</td>
<td><input type="text" name="experience" id="experience"></td>
</tr>
<tr>
<td>文化程度 </td>
<td><input type="text" name="teachSchool" id="teachSchool"></td>
</tr>
<tr>
<td>毕业学校 </td>
<td><input type="text" name="afterSchool" id="afterSchool"></td>
</tr>
<tr>
<td>联系电话 </td>
<td><input type="text" name="tel" id="tel"></td>
</tr>
<tr>
<td>联系地址 </td>
<td><input type="text" name="address" id="address"></td>
</tr>
<tr>
<td>备注信息 </td>
<td><input type="text" name="content" id="content"></td>
</tr>
<tr>
<td>------ </td>
<td><input type="button" value="提交">
<input type="hidden" id="post_url" value="invite_add.action">
		<input type="hidden" id="load_url" value="invite_querry.action"></td>
</tr>


</table>


</form>
</div></div></div>
<body>

</body>
</html>