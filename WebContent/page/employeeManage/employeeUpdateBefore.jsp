<%@page import="po.tb_employee"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改员工<%tb_employee e=(tb_employee)session.getAttribute("updateEmpoyeeInfo");
if(e!=null){
	out.print(e.getEm_name());
}
%>信息</title>
</head>
<body>
<!-- 提供修改电话号码
 * 联系地址
 * 部门ID
 * 工种 -->
 <center>
 <form action="employeeupdate.action">
 <table >
 <tr>
 <td>ID</td>
<td><%=e.getId() %></td>
 </tr>
 <tr>
 <td>姓名</td>
<td><%=e.getEm_name()%></td>
 </tr>
 <tr>
 <td>员工号</td>
<td><%=e.getEm_IDCard()%></td>
 </tr>
 <tr>
 <td>输入新电话号码</td>
<td><input type="text" name="newPnumber" value="<%=e.getEm_tel()%>"></td>
 </tr>
  <tr>
 <td>输入新联系地址</td>
<td><input type="text" name="newadrs" value="<%=e.getEm_address()%>"></td>
 </tr>
  <tr>
 <td>选择新部门</td>
<td><input type="text" name="newdepartment" value="<%=e.getEm_departmentId()%>"></td>
 </tr>
  <tr>
 <td>选择新工种</td>
<td><input type="text" name="newtypeWork" value="<%=e.getEm_typeWork()%>"></td>
 </tr>
  <tr>
 <td><input type="hidden" name="id" value="<%=e.getId()%>"></td>
<td><input type="submit"  value="确认修改"></td>
 </tr>
 </table>
 </form>
 </center>
</body>
</html>