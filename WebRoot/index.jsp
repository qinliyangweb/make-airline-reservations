<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<style type="text/css">
		h1{
			width:400px;
			color:blue;
			position:relative;
			top:20px;
			animation-name:myfirst;
			animation-duration:10s;
			animation-timing-function:linear;
			animation-delay:1s;
			animation-iteration-count:infinite;
			animation-direction:alternate;
			animation-play-state:running;
			/* Firefox: */
			-moz-animation-name:myfirst;
			-moz-animation-duration:10s;
			-moz-animation-timing-function:linear;
			-moz-animation-delay:1s;
			-moz-animation-iteration-count:infinite;
			-moz-animation-direction:alternate;
			-moz-animation-play-state:running;
			/* Safari and Chrome: */
			-webkit-animation-name:myfirst;
			-webkit-animation-duration:10s;
			-webkit-animation-timing-function:linear;
			-webkit-animation-delay:1s;
			-webkit-animation-iteration-count:infinite;
			-webkit-animation-direction:alternate;
			-webkit-animation-play-state:running;
			/* Opera: */
			-o-animation-name:myfirst;
			-o-animation-duration:10s;
			-o-animation-timing-function:linear;
			-o-animation-delay:1s;
			-o-animation-iteration-count:infinite;
			-o-animation-direction:alternate;
			-o-animation-play-state:running;
			/* IE: */
			-ms-animation-name:myfirst;
			-ms-animation-duration:10s;
			-ms-animation-timing-function:linear;
			-ms-animation-delay:1s;
			-ms-animation-iteration-count:infinite;
			-ms-animation-direction:alternate;
			-ms-animation-play-state:running
			}
				@keyframes myfirst{
			0%   {left:10%; top:20px;}
			25%  {left:50%; top:20px;}
			50%  {left:100%; top:20px;}
			75%  {left:50%; top:80px;}
			100% {left:0px; top:0px;}
		}

		@-moz-keyframes myfirst /* Firefox */{
			0%   {left:10%; top:20px;}
			25%  {left:50%; top:20px;}
			50%  {left:100%; top:20px;}
			75%  {left:50%; top:80px;}
			100% {left:0px; top:0px;}
		}

		@-webkit-keyframes myfirst /* Safari and Chrome */{
			0%   {left:10%; top:20px;}
			25%  {left:50%; top:20px;}
			50%  {left:100%; top:20px;}
			75%  {left:50%; top:80px;}
			100% {left:0px; top:0px;}
		}

		@-o-keyframes myfirst /* Opera */{
			0%   {left:10%; top:20px;}
			25%  {left:50%; top:20px;}
			50%  {left:100%; top:20px;}
			75%  {left:50%; top:80px;}
			100% {left:0px; top:0px;}
		}
		@-mz-keyframes myfirst /* IE */{
			0%   {left:10%; top:20px;}
			25%  {left:50%; top:20px;}
			50%  {left:100%; top:20px;}
			75%  {left:50%; top:80px;}
			100% {left:0px; top:0px;}
		}
  	
	</style>
  </head>
  <body>
    	<div class="container">
   		 	<div class="row col-md-12">
   		<img src="imgs/headerlogo.jpg" width="100%">
   	</div>
   	</div>
 <div class="container">
   <div class="row">
   		<div class="col-md-9">
		   		 <ul class="nav nav-pills">
		 			<li><a href="login.jsp">首页</a></li>
		 			<li class="active"><a href="flightManage.jsp">航班管理</a></li>
		 			<li><a href="ticketManage.jsp">票数管理</a></li>
		 			<li><a href="myOrder.jsp">机票预订</a></li>
		 			<li><a href="order.jsp">我的订单</a></li>
		 			<li><a href="ticketManage_1.jsp">我的信息</a></li>
				 </ul>
		</div>
		<div class="col-md-3">
			<ul class="nav navbar-nav">
				<li><a class="disabled">你尚未</a></li>
				<li><a data-toggle="modal" data-target="#loginModal">登入</a></li>
				<li><a data-toggle="modal" data-target="#regModal">注册</a></li>
			</ul>
		</div>
	</div>
</div>
   <section class="container">
   		<section class="row">
   			<div class="col-md-12">
   				<h1></h1>
   			</div>
   		</section>
   </section>
   	
  </body>
</html>
