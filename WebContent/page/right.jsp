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
<!-- /col-lg-9 END SECTION MIDDLE --> <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->

<div class="col-lg-3 ds"><!--COMPLETED ACTIONS DONUTS CHART-->
<h3>NOTIFICATIONS</h3>

<!-- First Action -->
<div class="desc">
<div class="thumb"><span class="badge bg-theme"><i
	class="fa fa-clock-o"></i></span></div>
<div class="details">
<p><muted>2 Minutes Ago</muted><br />
<a href="#">James Brown</a> subscribed to your newsletter.<br />
</p>
</div>
</div>
<!-- Second Action -->
<div class="desc">
<div class="thumb"><span class="badge bg-theme"><i
	class="fa fa-clock-o"></i></span></div>
<div class="details">
<p><muted>3 Hours Ago</muted><br />
<a href="#">Diana Kennedy</a> purchased a year subscription.<br />
</p>
</div>
</div>
<!-- Third Action -->
<div class="desc">
<div class="thumb"><span class="badge bg-theme"><i
	class="fa fa-clock-o"></i></span></div>
<div class="details">
<p><muted>7 Hours Ago</muted><br />
<a href="#">Brandon Page</a> purchased a year subscription.<br />
</p>
</div>
</div>
<!-- Fourth Action -->
<div class="desc">
<div class="thumb"><span class="badge bg-theme"><i
	class="fa fa-clock-o"></i></span></div>
<div class="details">
<p><muted>11 Hours Ago</muted><br />
<a href="#">Mark Twain</a> commented your post.<br />
</p>
</div>
</div>
<!-- Fifth Action -->
<div class="desc">
<div class="thumb"><span class="badge bg-theme"><i
	class="fa fa-clock-o"></i></span></div>
<div class="details">
<p><muted>18 Hours Ago</muted><br />
<a href="#">Daniel Pratt</a> purchased a wallet in your store.<br />
</p>
</div>
</div>

<!-- USERS ONLINE SECTION -->
<h3>TEAM MEMBERS</h3>
<!-- First Member -->
<div class="desc">
<div class="thumb"><img class="img-circle"
	src="assets/img/ui-divya.jpg" width="35px" height="35px" align="">
</div>
<div class="details">
<p><a href="#">DIVYA MANIAN</a><br />
<muted>Available</muted></p>
</div>
</div>
<!-- Second Member -->
<div class="desc">
<div class="thumb"><img class="img-circle"
	src="assets/img/ui-sherman.jpg" width="35px" height="35px" align="">
</div>
<div class="details">
<p><a href="#">DJ SHERMAN</a><br />
<muted>I am Busy</muted></p>
</div>
</div>
<!-- Third Member -->
<div class="desc">
<div class="thumb"><img class="img-circle"
	src="assets/img/ui-danro.jpg" width="35px" height="35px" align="">
</div>
<div class="details">
<p><a href="#">DAN ROGERS</a><br />
<muted>Available</muted></p>
</div>
</div>
<!-- Fourth Member -->
<div class="desc">
<div class="thumb"><img class="img-circle"
	src="assets/img/ui-zac.jpg" width="35px" height="35px" align="">
</div>
<div class="details">
<p><a href="#">Zac Sniders</a><br />
<muted>Available</muted></p>
</div>
</div>
<!-- Fifth Member -->
<div class="desc">
<div class="thumb"><img class="img-circle"
	src="assets/img/ui-sam.jpg" width="35px" height="35px" align="">
</div>
<div class="details">
<p><a href="#">Marcel Newman</a><br />
<muted>Available</muted></p>
</div>
</div>

<!-- CALENDAR-->
<div id="calendar" class="mb">
<div class="panel green-panel no-margin">
<div class="panel-body">
<div id="date-popover" class="popover top"
	style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
<div class="arrow"></div>
<h3 class="popover-title" style="disadding: none;"></h3>
<div id="date-popover-content" class="popover-content"></div>
</div>
<div id="my-calendar"></div>
</div>
</div>
</div>
<!-- / calendar --></div>
</body>
</html>