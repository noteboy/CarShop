<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<title>注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Custom Login Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet"> -->
<!-- /fonts -->
<!-- css files -->
<link href="/css/reg.css" rel="stylesheet" type='text/css' media="all" />
<!-- /css files -->
</head>
<body>
<h1 class="w3ls">没有账号？注册</h1>
<div id="main">
    <form class="w3l" method="post" action="/user/doRegister">
		<div class="row email w3layouts">
	    	<input type="text" id="email" name="username" placeholder="用户名" required/>
        </div>
		<div class="row pass w3layouts">
        	<input type="password" id="password1" name="password1" placeholder="密码" required/>
        </div>
        <div class="row pass agileits">
			<input type="password" id="password2" name="password2" placeholder="重复密码" required />
        </div>
        <!-- The rotating arrow -->
		<img src="/images/dial.png" alt="" class="dial-agileits agileinfo">
        <div class="arrowCap agileinfo"></div>
        <div class="arrow agile"></div>
        <p class="meterText agileits">您密码的安全等级</p>
        <input type="submit" value="注册！" />
    </form>
</div>
<p class="copyright wthree">© 2017 carsale All Rights Reserved | Design by IMU</p>
<!-- js files -->
</body>
<script src="/js/jquery-1.7.2.min.js"></script>
<script src="/js/jquery.complexify.js"></script>
<script src="/js/script.js"></script>
</html>
