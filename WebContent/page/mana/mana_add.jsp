<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
</html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>管理员添加</title> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />




<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

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
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body class="style-2">

<div class="container">

<div class="row">
<div class="col-md-4">
<div class="col-md-12 text-center">
<ul class="menu">

	<li class="active"><a href="#"> <%
 	String info = (String) request.getAttribute("info");
 	if (info != null) {
 		out.print(info);
 	} else {
 		out.print("输入有误，检查你的输入");
 	}
 %> </a></li>
</ul>
</div>

<!-- Start Sign In Form -->
<form action="regist.action" class="fh5co-form animate-box" id="addMana"
	data-animate-effect="fadeInLeft">
<h2>添加管理员</h2>
<div class="form-group">
<!--   <div class="alert alert-success" role="alert">信息已提交.</div>-->
</div>
<div class="form-group"><label for="name" class="sr-only">Account</label>
<input type="text" class="form-control" id="account" placeholder="Name"
	name="account" autocomplete="off"></div>
<div class="form-group"><label for="email" class="sr-only">Email</label>
<input type="email" class="form-control" id="email" placeholder="Email"
	name="email" autocomplete="off"></div>
<div class="form-group"><label for="password" class="sr-only">Password</label>
<input type="password" class="form-control" id="psd" name="psd"
	placeholder="Password" autocomplete="off"></div>
<div class="form-group"><label for="re-password" class="sr-only">Re-type
Password</label> <input type="password" class="form-control" id="checkpsd"
	name="checkpsd" placeholder="Re-type Password" autocomplete="off"></div>

<div class="form-group"><input type="radio" id="level" value="1"
	name="level" name="level">系统管理员<br>
<input type="radio" id="level" value="0" name="level" name="level"
	checked="checked">普通管理员</div>

<div class="form-group">
<p>已经有账号？ <a href="loginout.action">返回登录</a></p>
</div>
<div class="form-group"><input type="button" value="添加"
	 class="btn btn-primary">
	 <input type="hidden" id="post_url" value="mana_add.action">
		<input type="hidden" id="load_url" value="mana_querry.action">
	 </div>
</form>
<!-- END Sign In Form --></div>
</div>
<div class="row" style="padding-top: 60px; clear: both;">
<div class="col-md-12 text-center">
<p><small>&copy; All Rights Reserved. @2017-2999 <a
	href="http://www.baidu.com/" target="_blank" title="baidu">Baidu</a> -
Desigen for<a href="http://www.baidu.com/" title="人力资源管理系统"
	target="_blank">人力资源管理系统</a></small></p>
</div>
</div>
</div>

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

</body>
</html>