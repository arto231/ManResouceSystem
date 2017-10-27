<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/ManResouceSystem/assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="/ManResouceSystem/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/ManResouceSystem/assets/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css"
	href="/ManResouceSystem/assets/js/gritter/css/jquery.gritter.css">
<link rel="stylesheet" type="text/css"
	href="/ManResouceSystem/assets/lineicons/style.css">

<!-- Custom styles for this template -->
<link href="/ManResouceSystem/assets/css/style.css" rel="stylesheet">
<link href="/ManResouceSystem/assets/css/style-responsive.css"
	rel="stylesheet">

<script src="/ManResouceSystem/js/jquery-3.2.1.min.js"></script>
<script src="/ManResouceSystem/js/myjquery.js"></script>
<script src="/ManResouceSystem/assets/js/chart-master/Chart.js"></script>
<script src="/ManResouceSystem/js/checkjs.js"></script>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	display: block;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid :         DXImageTransform.Microsoft.gradient (      
		  startColorstr =    
		    #99000000, endColorstr =         #99000000 );
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	padding: 5px 5px 8px 5px;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
<link type="text/css" rel="stylesheet" charset="UTF-8"
	href="https://translate.googleapis.com/translate_static/css/translateelement.css">

</head>
<body>
<!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
<!--sidebar start-->
<aside>
<div id="sidebar" class="nav-collapse " tabindex="5000"
	style="overflow: hidden; outline: none;"><!-- sidebar menu start-->
<ul class="sidebar-menu" id="nav-accordion">

	<p class="centered"><a href="profile.html"><img
		src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
	<h5 class="centered"><font style="vertical-align: inherit;"><font
		style="vertical-align: inherit;"><%=((tb_manager)session.getAttribute("user")).getAcount() %><!--获取登录user account -->
	</font></font></h5>


	<li class="mt"><a href="/ManResouceSystem/page/mainpage.jsp"
		class="active"> <i class="fa fa-dashboard"></i> <span><font
		style="vertical-align: inherit;"><font
		style="vertical-align: inherit;">主页</font></font></span> </a></li>


	<li class="sub-menu dcjq-parent-li"><a href="javascript:;"> <i
		class="fa fa-desktop"></i> <span><font
		style="vertical-align: inherit;"><font
		style="vertical-align: inherit;">人力资源管理</font></font></span> <span class="dcjq-icon"></span></a>
	<ul class="sss" style="display: none;">
		<li><a class="sub-1" href="javascript:axjxTest('department_querry.action')">部门管理</a></li>
		<li><a class="sub-1" href="javascript:axjxTest('invite_querry.action')">招聘管理</a></li>
		<li><a class="sub-1" href="javascript:axjxTest('train_querry.action')">培训管理</a></li>
		<li><a class="sub-1" href="javascript:axjxTest('employee_querry.action')">员工信息管理</a></li>
		<li><a class="sub-1" href="javascript:axjxTest('pay_querry.action')">薪资管理</a></li>
		<li><a class="sub-1" href="javascript:axjxTest('cj_querry.action')">奖惩管理</a></li>
	</ul>
	</li>
	<style>
.sss li .sub-1.active,.sss li .sub-1:hover,.sss li .sub-1:focus {
	background: none;
	color: #68dff0;
}

.sss li .sub-1:hover {
	color: #FFF;
}
</style>
	</li>
	<li class="sub-menu dcjq-parent-li"><a href="javascript:;"
		class="dcjq-parent"> <i class="fa fa-desktop"></i> <span><font
		style="vertical-align: inherit;"><font
		style="vertical-align: inherit;">管理员</font></font></span> <span class="dcjq-icon"></span></a>
	<ul class="sss" style="display: none;">
		<li><a class="sub-1" href="javascript:axjxTest('mana_querry.action')">系统管理</a></li>
		<li><a class="sub-1" href="#">Buttons</a></li>
		<li><a class="sub-1" href="#">Panels</a></li>
	</ul>
	</li>


</ul>
<!-- sidebar menu end--></div>
</aside>
</body>
</html>