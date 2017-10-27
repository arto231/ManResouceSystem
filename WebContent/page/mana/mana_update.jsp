<%@page import="po.tb_manager"%>
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
%>
<%
	} else {
		out.print("" + user + "&nbsp&nbsp");
	}
%>&nbsp管理员密码修改</title>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="http://118.89.182.232:8080/source/login/css/bootstrap.min.css">
<link rel="stylesheet" href="http://118.89.182.232:8080/source/login/css/animate.css">
<link rel="stylesheet" href="http://118.89.182.232:8080/source/login/css/style.css">


<!-- Modernizr JS -->
<script src="http://118.89.182.232:8080/source/login/js/modernizr-2.6.2.min.js"></script>
<script src="http://118.89.182.232:8080/source/login/js/checkjs.js"></script>
<!-- jQuery -->
<script src="http://118.89.182.232:8080/source/login/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="http://118.89.182.232:8080/source/login/js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="http://118.89.182.232:8080/source/login/js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="http://118.89.182.232:8080/source/login/js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="http://118.89.182.232:8080/source/login/js/main.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="http://118.89.182.232:8080/source/login/js/respond.min.js"></script>
	<![endif]-->
</head>
<body class="style-2">
<br />
<br />
<center>
<form action="updateManaPsd.action" id="updateMana">
<table>
	<tr>
		<td colspan="2" align="center">
		<h1>修改管理员密码</h1>
		</td>
	</tr>
	<tr>
		<td>account:</td>
		<td><%=user%><input type="hidden" name="account" value="<%=user%>"></td>
	</tr>
	<tr>
		<td>password:</td>
		<td><input type="password" name="newpsd"></td>
	</tr>
	<tr>
		<td>ConfirmPassword:</td>
		<td><input type="password" name="checkpsd"></td>
	</tr>

	<tr>
		<td><input type="submit" value="确认修改"></td>

	</tr>
</table>

</form>
</center>
</body>
</html>