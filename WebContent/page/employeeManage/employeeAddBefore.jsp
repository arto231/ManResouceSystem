<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加员工信息</title>
</head>

<script src="../../js/checkjs.js"></script>
<body>


<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h2>输入员工信息</h2></font></font></h4>


 <br>
<form action="employeeadd.action" id="employeeadd">
<table>

	<tr>
		<td>*员工姓名</td>
		<td><input type="text" name="em_name" id="em_name"></td>
		<td>员工性别</td>
		<td><input type="radio" name="em_sex" value="男" checked="checked">男<input
			type="radio" name="em_sex" value="女">女</td>
		<td></td>
	</tr>

	<tr>
		<td>*员工身份号</td>
		<td><input type="text" name="em_IDCard" id="em_IDCard"></td>
		<td>民族信息</td>
		<td><input type="text" name="em_nation"></td>

	</tr>
	<tr>
		<td>是否结婚</td>
		<td><input type="radio" name="em_marriage" value="否"
			checked="checked">否<input type="radio" name="em_marriage"
			value="是">是</td>
		<td>政治面貌</td>
		<td><input type="text" name="em_visage"></td>

	</tr>

	<tr>
		<td>籍贯</td>
		<td><input type="text" name="em_ancestralHome"></td>
		<td>*联系电话</td>
		<td><input type="text" name="em_tel" id="em_tel"></td>

	</tr>
	<tr>
		<td>*联系地址</td>
		<td><input type="text" name="em_address" id="em_address"></td>
		<td>*毕业学校</td>
		<td><input type="text" name="em_afterSchool" id="em_afterSchool"></td>

	</tr>
	<tr>
		<td>*所学专业</td>
		<td><input type="text" name="em_specially" id="em_specially"></td>
		<td>*文化程度</td>
		<td><select name="em_culture" form="employeeadd" id="em_culture">
			<option value="中专">中专</option>
			<option value="大专">大专</option>
			<option value="本科">本科</option>
			<option value="研究生">研究生</option>
			<option value="硕士">硕士</option>
			<option value="博士">博士</option>
		</select></td>

	</tr>
	<tr>
		<td>*开始工作时间</td>
		<td><input type="text" name="em_startime" id="em_startime"></td>
		<td>*部门</td>
		
		<td><select name="em_departmentId" form="employeeadd">
		<% String[] partments=(String[])session.getAttribute("partmentinfo");
		if(partments!=null){
		for(String name:partments){
			out.print("<option value='"+name+"'>"+name+"</option>");
		}}
		%>
			
		</select></td>
	</tr>
	<tr>
		<td>*工种</td>
		<td><select name="em_typeWork" form="employeeadd" id="em_typeWork">
			<option value="程序员">程序员</option>
			<option value="工程师">工程师</option>
			<option value="架构师">架构师</option>
			<option value="前端">前端</option>
			<option value="项目经理">项目经理</option>
			<option value="营销">营销</option>
		</select></td>
		<td>*登记人</td>
		<td><input type="text" name="em_createName" id="em_createName"></td>

	</tr>
	<tr>
		<td>备注</td>
		<td><input type="text" name="em_bz"></td>

	</tr>
	<tr>
		<td></td>
		<td><input type="button" value="提交" >
		<input type="hidden" id="post_url" value="employee_add.action">
		<input type="hidden" id="load_url" value="employee_querry.action"></td>

	</tr>
</table>
</form>
   </div>
          		</div><!-- col-lg-12-->      	
          	</div>

</body>
</html>