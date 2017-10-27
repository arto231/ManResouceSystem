<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<script src="/ManResouceSystem/js/jquery-3.2.1.min.js"></script>
<script src="/ManResouceSystem/js/myjquery.js"></script>
<script src="/ManResouceSystem/js/checkjs.js"></script>

</head>
<body>
<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h2>添加部门信息</h2></font></font></h4>

<form action="" id="partmentadd">
<table>
<tr>
<td>部门名字</td>
<td><input type="text" name="dt_name" id="dt_name"></td>
</tr>
<tr>
<td>备注信息</td>
<td><input type="text" name="dt_bz" id="dt_bz">
<input type="hidden"  id="post_url" value="department_add.action">
<input type="hidden"  id="load_url" value="department_querry.action">
</td>
</tr>

<tr>
<td>--</td>
<td><input   type="button" value="添加" ></td>
</tr>



</table>

</form>
<a href="partmentQuerry.action">返回</a>
</div></div></div>
</body>
</html>