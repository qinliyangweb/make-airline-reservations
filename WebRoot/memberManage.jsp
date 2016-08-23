<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
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
		 			<li><a href="flightManage.jsp">航班管理</a></li>
		 			<li><a href="ticketManage.jsp">票数管理</a></li>
		 			<li class="active"><a href="myOrder.jsp">机票预订</a></li>
		 			<li><a href="order.jsp">我的订单</a></li>
		 			<li><a href="ticketManage_1.jsp">我的信息</a></li>
				 </ul>
		</div>
		<div class="col-md-3 nav nav-pills">
				欢迎，${sessionScope.user.loginName }&nbsp;|&nbsp;
						<a href="javascript:void(0)"  >安全退出</a>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<form role="form">
      	 		<div class="form-group  col-md-8 col-md-offset-2  text-right">
					<label for="uname" class="col-md-2 col-md-offset-2 control-label">用户登陆名：</label>
					<div class="col-md-4">
					    <input name="loginName" id="loginName" class="form-control" value="${sessionScope.user.loginName }">
					</div>
					<div class="col-md-4">
					    <span id="spname"></span>  
					</div>
				</div>
      	 		<div class="form-group col-md-8 col-md-offset-2  text-right">
					<label for="password" class="col-md-2 col-md-offset-2 control-label">用户密码：</label>
					<div class="col-md-4">
					    <input type="password"  name="password" id="password" class="form-control" value="">
					</div>
				</div>
				<div class="form-group col-md-8 col-md-offset-2  text-right">
					<label for="password2" class="col-md-2 col-md-offset-2 control-label">重复密码：</label>
					<div class="col-md-4">
					    <input type="password"  name="password2" id="password2" class="form-control" value="">
					</div>
				</div>
				<div class="form-group col-md-8 col-md-offset-2  text-right">
					<label for="userName" class="col-md-2 col-md-offset-2 control-label">用户姓名：</label>
					<div class="col-md-4">
					    <input type="text"  name="userName" id="userName" class="form-control" value="">
					</div>
				</div>
				<div class="form-group col-md-8 col-md-offset-2  text-right">
					 <label class="col-md-2 col-md-offset-2 control-label">性别：</label>
					 <div class="col-md-2  col-md-offset-1  text-left">
					      <input type="radio" name="sex" id="M"><label class="control-label" for="M">男</label>
					 </div>
					 <div class="col-md-2 col-md-pull-1 text-left">
					 	<input type="radio" name="sex" id="F"><label class="control-label" for="F">女</label>
					 </div>
				</div>
				<div class="form-group col-md-8 col-md-offset-2 text-right">
					<label for="userICard" class="col-md-2 col-md-offset-2 control-label">身份证号：</label>
					<div class="col-md-4">
					    <input type="text"  name="userICard" id="userICard" class="form-control" value="">
					</div>
				</div>
				<div class="form-group col-md-8 col-md-offset-2 text-right">
					<label for="mail" class="col-md-2 col-md-offset-2 control-label">邮箱：</label>
					<div class="col-md-4">
					    <input type="email"  name="mail" id="mail" class="form-control" value="">
					</div>
				</div>
				<div class="form-group col-md-8 col-md-offset-2">
					<div class="col-md-1 col-md-offset-5">
					     <input type="submit" class="btn btn-primary" value="提交">
					 </div>
					 
				</div>
      	 	</form>
	</div>
</div>
  </body>
</html>
