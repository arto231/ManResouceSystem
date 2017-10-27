<%@page import="po.tb_manager"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理系统首页</title>

<!-- Bootstrap core CSS -->
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
<body style="">
<!-- 正文 -->
<section id="container">
<!--actionbar 顶部栏header start-->
<header class="header black-bg">
<div class="sidebar-toggle-box">
<div class="fa fa-bars tooltips" data-placement="right"
	data-original-title="Toggle Navigation"></div>
</div>
<!--logo start-->
<a href="/ManResouceSystem/mainpage.jsp" class="logo"><b><font
	style="vertical-align: inherit;"><font
	style="vertical-align: inherit;">人力资源管理系统</font></font></b></a>
<!--logo end-->
<div class="nav notify-row" id="top_menu"><!--  notification start -->
<ul class="nav top-menu">
	<!-- settings start -->
	<li class="dropdown"><a data-toggle="dropdown"
		class="dropdown-toggle" href="index.html#"> <i class="fa fa-tasks"></i>
	<span class="badge bg-theme"><font
		style="vertical-align: inherit;"><font
		style="vertical-align: inherit;">4</font></font></span> </a>
	<ul class="dropdown-menu extended tasks-bar">
		<div class="notify-arrow notify-arrow-green"></div>
		<li>
		<p class="green"><font style="vertical-align: inherit;"><font
			style="vertical-align: inherit;">您有4个待处理任务</font></font></p>
		</li>
		<li><a href="index.html#">
		<div class="task-info">
		<div class="desc"><font style="vertical-align: inherit;"><font
			style="vertical-align: inherit;">人力资源管理面板</font></font></div>
		<div class="percent"><font style="vertical-align: inherit;"><font
			style="vertical-align: inherit;">40％</font></font></div>
		</div>
		<div class="progress progress-striped">
		<div class="progress-bar progress-bar-success" role="progressbar"
			aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
			style="width: 100%"><!--在此改变进度的值  --><span class="sr-only"><font
			style="vertical-align: inherit;"><font
			style="vertical-align: inherit;">100％完成（成功）</font></font></span></div>
		</div>
		</a></li>
		<li><a href="index.html#">
		<div class="task-info">
		<div class="desc">Database Update</div>
		<div class="percent">60%</div>
		</div>
		<div class="progress progress-striped">
		<div class="progress-bar progress-bar-warning" role="progressbar"
			aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
			style="width: 60%"><span class="sr-only">60% Complete
		(warning)</span></div>
		</div>
		</a></li>
		<li><a href="index.html#">
		<div class="task-info">
		<div class="desc">Product Development</div>
		<div class="percent">80%</div>
		</div>
		<div class="progress progress-striped">
		<div class="progress-bar progress-bar-info" role="progressbar"
			aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
			style="width: 80%"><span class="sr-only">80% Complete</span></div>
		</div>
		</a></li>
		<li><a href="index.html#">
		<div class="task-info">
		<div class="desc">Payments Sent</div>
		<div class="percent">70%</div>
		</div>
		<div class="progress progress-striped">
		<div class="progress-bar progress-bar-danger" role="progressbar"
			aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
			style="width: 70%"><span class="sr-only">70% Complete
		(Important)</span></div>
		</div>
		</a></li>
		<li class="external"><a href="#">See All Tasks</a></li>
	</ul>
	</li>
	<!-- settings end -->
	<!-- inbox dropdown start-->
	<li id="header_inbox_bar" class="dropdown"><a
		data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
	<i class="fa fa-envelope-o"></i> <span class="badge bg-theme"><font
		style="vertical-align: inherit;"><font
		style="vertical-align: inherit;">五</font></font></span> </a>
	<ul class="dropdown-menu extended inbox">
		<div class="notify-arrow notify-arrow-green"></div>
		<li>
		<p class="green">你有五条新消息！</p>
		</li>
		<li><a href="index.html#"> <span class="photo"><img
			alt="avatar" src="assets/img/ui-zac.jpg"></span> <span class="subject">
		<span class="from">Zac Snider</span> <span class="time">Just
		now</span> </span> <span class="message"> Hi mate, how is everything? </span> </a></li>
		<li><a href="index.html#"> <span class="photo"><img
			alt="avatar" src="assets/img/ui-divya.jpg"></span> <span
			class="subject"> <span class="from">Divya Manian</span> <span
			class="time">40 mins.</span> </span> <span class="message"> Hi, I
		need your help with this. </span> </a></li>
		<li><a href="index.html#"> <span class="photo"><img
			alt="avatar" src="assets/img/ui-danro.jpg"></span> <span
			class="subject"> <span class="from">Dan Rogers</span> <span
			class="time">2 hrs.</span> </span> <span class="message"> Love your
		new Dashboard. </span> </a></li>
		<li><a href="index.html#"> <span class="photo"><img
			alt="avatar" src="assets/img/ui-sherman.jpg"></span> <span
			class="subject"> <span class="from">Dj Sherman</span> <span
			class="time">4 hrs.</span> </span> <span class="message"> Please,
		answer asap. </span> </a></li>
		<li><a href="index.html#">See all messages</a></li>
	</ul>
	</li>
	<!-- inbox dropdown end -->
</ul>
<!--  notification end --></div>
<div class="top-menu">
<ul class="nav pull-right top-menu">
	<li><a class="logout" href="loginout.action"><font
		style="vertical-align: inherit;"><font
		style="vertical-align: inherit;">登出</font></font></a></li>
</ul>
</div>
</header>
<!--顶部栏header end-->

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
<!--sidebar end-->
<!-- **********************************************************************************************************************************************************
      正文内容
      *********************************************************************************************************************************************************** -->
<!--main content start-->
<section id="main-content">
<section class="wrapper">

<div class="row">
<div class="col-lg-9 main-chart">

<div class="row mtbox">
<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
<div class="box1"><span class="li_heart"></span>
<h3><a class="dcjq-parent"
	href="javascript:axjxTest('/ManResouceSystem/page/employeeManage/employeeAddBefore.jsp')">添加员工信息</a></h3>
</div>
<p>录入新员工的相关信息</p>
</div>
<div class="col-md-2 col-sm-2 box0">
<div class="box1"><span class="li_cloud"></span>
<h3><a class="dcjq-parent"
	href="javascript:axjxTest('/ManResouceSystem/page/partmentManage/departmentAddBefore.jsp')">添加部门信息</a></h3>
</div>
<p>增添新部门时信息添加</p>
</div>
<div class="col-md-2 col-sm-2 box0">
<div class="box1"><span class="li_stack"></span>
<h3><a class="dcjq-parent"
	href="javascript:axjxTest('/ManResouceSystem/page/inviteJob/invitejobAddBefore.jsp')">添加招聘信息</a></h3>
</div>
<p>发布招聘信息</p>
</div>
<div class="col-md-2 col-sm-2 box0">
<div class="box1"><span class="li_news"></span>
<h3><a class="dcjq-parent"
	href="javascript:axjxTest('/ManResouceSystem/page/train/trainAddBefore.jsp')">添加培训信息</a></h3>
</div>
<p>新员工培训信息录入</p>
</div>
<div class="col-md-2 col-sm-2 box0">
<div class="box1"><span class="li_data"></span>
<h3><a class="dcjq-parent"
	href="javascript:axjxTest('/ManResouceSystem/page/cj/cjAddBefore.jsp')">添加奖惩信息</a></h3>
</div>
<p>员工奖惩管理具体信息录入</p>
</div>

</div>
<!-- /row mt -->

<p id="txtHint"></p>
<!-- 传统js 配合AJAX  -->
<script>

	function axjxTest(url) {
		var xmlhttp;
		if (url == "") {
			document.getElementById("txtHint").innerHTML = "输入不能为空";
			return;
		}
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", url, true);
		xmlhttp.send();
	}
	
</script>



<div class="row mt"><!--CUSTOM CHART START -->
<div class="border-head">
<h3>管理员最近访问次数</h3>
</div>
<div class="custom-bar-chart">
<ul class="y-axis">

	<li><span>100</span></li>
	<li><span>80</span></li>
	<li><span>60</span></li>
	<li><span>40</span></li>
	<li><span>20</span></li>
	<li><span>0</span></li>
</ul>

<!-- 获取系统中管理员登录次数信息 --> <%HashMap<String, Integer> admininfo=(HashMap<String, Integer>)session.getAttribute("adminLoginInfo");
if(admininfo==null)out.print("获取失败");for(String key:admininfo.keySet()){%>
<div class="bar">
<div class="title"><%=key %></div>
<div class="value tooltips" data-original-title="<%=admininfo.get(key)%>"
	data-toggle="tooltip" data-placement="top"><% out.print(((admininfo.get(key))*100)/100+"");  %>%</div>
</div>
<%} %>
</div>
<!--custom chart end--></div>

</section>
</section>

</section>



<!-- 底部js，js引用 -->
<!-- js placed at the end of the document so the pages load faster -->
<script src="/ManResouceSystem/assets/js/jquery.js"></script>
<script src="/ManResouceSystem/assets/js/jquery-1.8.3.min.js"></script>
<script src="/ManResouceSystem/assets/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript"
	src="/ManResouceSystem/assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/ManResouceSystem/assets/js/jquery.scrollTo.min.js"></script>
<script src="/ManResouceSystem/assets/js/jquery.nicescroll.js"
	type="text/javascript"></script>
<script src="/ManResouceSystem/assets/js/jquery.sparkline.js"></script>


<!--common script for all pages-->
<script src="/ManResouceSystem/assets/js/common-scripts.js"></script>
<div id="ascrail2000" class="nicescroll-rails"
	style="width: 3px; z-index: auto; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; left: 207px; height: 957px; display: none; opacity: 0;">
<div
	style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(78, 205, 196); background-clip: padding-box; border-radius: 10px;"></div>
</div>
<div id="ascrail2000-hr" class="nicescroll-rails"
	style="height: 3px; z-index: auto; background: rgb(64, 64, 64); top: 954px; left: 0px; position: fixed; cursor: default; display: none; opacity: 0;">
<div
	style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(78, 205, 196); background-clip: padding-box; border-radius: 10px;"></div>
</div>
<div id="ascrail2001" class="nicescroll-rails"
	style="width: 6px; z-index: 1000; background: rgb(64, 64, 64); cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
<div
	style="position: relative; top: 0px; float: right; width: 6px; height: 281px; background-color: rgb(78, 205, 196); background-clip: padding-box; border-radius: 10px;"></div>
</div>
<div id="ascrail2001-hr" class="nicescroll-rails"
	style="height: 6px; z-index: 1000; background: rgb(64, 64, 64); position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; opacity: 0;">
<div
	style="position: relative; top: 0px; height: 6px; width: 956px; background-color: rgb(78, 205, 196); background-clip: padding-box; border-radius: 10px; left: 0px;"></div>
</div>

<script type="text/javascript"
	src="/ManResouceSystem/assets/js/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript"
	src="/ManResouceSystem/assets/js/gritter-conf.js"></script>

<!--script for this page-->
<script src="/ManResouceSystem/assets/js/sparkline-chart.js"></script>
<script src="/ManResouceSystem/assets/js/zabuto_calendar.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var unique_id = $.gritter
								.add({
									// (string | mandatory) the heading of the notification
									title : '欢迎来到管理界面!',
									// (string | mandatory) the text inside the notification
									text : '点击关闭. 你也可以点击左边栏隐藏. Free version for <a href="" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
									// (string | optional) the image to display on the left
									image : 'assets/img/ui-sam.jpg',
									// (bool | optional) if you want it to fade out on its own or just sit there
									sticky : true,
									// (int | optional) the time you want it to be alive for before fading out
									time : '',
									// (string | optional) the class name you want to apply to that specific message
									class_name : 'my-sticky-class'
								});

						return false;
					});
</script>

<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
</body>
</html>