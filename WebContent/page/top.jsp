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

</html>