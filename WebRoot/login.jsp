<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
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
		 			<li class="active"><a href="login.jsp">首页</a></li>
		 			<li><a href="flightManage.jsp">航班管理</a></li>
		 			<li><a href="ticketManage.jsp">票数管理</a></li>
		 			<li><a href="myOrder.jsp">机票预订</a></li>
		 			<li><a href="order.jsp">我的订单</a></li>
		 			<li><a href="ticketManage_1.jsp">我的信息</a></li>
				 </ul>
		</div>
		<div class="col-md-3">
			<ul class="nav nav-pills">
				<li><a class="disabled">你尚未</a></li>
				<li><a href="javascript:void(0)" onclick="doLogin()">登陆</a></li>
				<li><a href="javascript:void(0)" onclick="doReg()">注册</a></li>
			</ul>
		</div>
	</div>

		
   	<!-- 用户登录摸态框 -->
	<div class="row">
      		<div class="modal fade" id="dengl"  tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content" >
						<div class="modal-header">
					 	 	<button class="close" data-dismiss="modal">X</button>
					  		<h2 class="text-center">用户登录</h2>
						</div>
						<form role="form" class="form-horizontal" method="post" id="loginForm" ng-submit="doLogin()">
					  		<div class="modal-body">
					    		<div class="form-group">
					      			<label for="loginName" class="col-md-2 col-md-offset-2 control-label right-block">用户名:</label>
					      			<div class="col-md-4">
					        			<input name="loginName" id="loginName" class="form-control" required data-fv-notempty-message="登录名不能为空" ng-model="loginName">
					      			</div>
					    		</div>
					    		<div class="form-group">
					      			<label for="password" class="col-md-2 col-md-offset-2 control-label right-block">密码:</label>
					      			<div class="col-md-4">
					         			<input type="password" name="password" id="password" class="form-control" required data-fv-notempty-message="密码不能为空"
					         			 ng-model="password">
					      			</div>
					      		</div>
					 	 	</div>
					 	 	<div class="modal-footer">
					   			<div class="form-group">
					      			<div class="col-md-1 col-md-offset-5">
					        			<input type="submit" class="btn btn-primary" value="提交">
					      			</div>
					   			</div>
					  		</div>
						</form>
					</div>
			</div>
		</div>
      </div>
	
	<!-- 用户注册 -->
	<div class="row" >
      		<div class="modal fade" id="zhuc"  tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content" >
						<div class="modal-header">
					 	 	<button class="close" data-dismiss="modal">&times;</button>
					  		<h2 class="text-center">用户注册</h2>
						</div>
						<form  role="form" class="form-horizontal" method="post" id="regForm" ng-submit="doRegister()">
					  		<div class="modal-body">
					    		<div class="form-group">
					      			<label for="uname" class="col-md-2 col-md-offset-2 control-label right-block">用户名：</label>
					      			<div class="col-md-4">
					        			<input name="loginName" id="loginName" class="form-control" required data-fv-notempty-message="登录名不能为空"  ng-model="loginName" ng-blur="doChkName()">
					      			</div>
					      			<div class="col-md-4">
					        			<span class="red" ng-bind="nr2"></span>  
					      			</div>
					   			</div>
					   			<div class="form-group">
					      			<label for="userName" class="col-md-3 col-md-offset-1 control-label right-block">用户真实姓名：</label>
					      			<div class="col-md-4">
					        			<input name="userName" id="userName" required data-fv-notempty-message="真实姓名不能为空" class="form-control" ng-model="userName" ng-blur="doCheckRealName()">
					      			</div>
					      			<div class="col-md-4">
					        			<span class="red" ng-blind="un"></span>  
					      			</div>
					   			</div>
					   			<div class="form-group">
					      			<label class="col-md-2 col-md-offset-2 control-label right-block">性别：</label>
					      			<div class="col-md-2  col-md-offset-1">
					        			<input type="radio" name="sex" ng-model="sex" id="M" checked><label class="control-label" for="M">男</label>
					      			</div>
					      			<div class="col-md-2 col-md-pull-1">
					        			<input type="radio" name="sex" ng-model="sex" id="F"><label class="control-label" for="F">女</label>
					      			</div>
					   			</div>
					   			<div class="form-group">
					      			<label for="userICard" class="col-md-2 col-md-offset-2 control-label right-block">身份证号:</label>
					      			<div class="col-md-4">
					         			<input type="text" name="userICard" id="userICard" required data-fv-notempty-message="身份证号不能为空" class="form-control" ng-model="userICard" ng-blur="doCheckIdCard()">
					      			</div>
					     	 		<div class="col-md-4">
					       				<span class="red" ng-bind="uidinf"></span>  
					      			</div>
					      		</div>
					    		<div class="form-group">
					      			<label for="password" class="col-md-2 col-md-offset-2 control-label right-block">密码:</label>
					      			<div class="col-md-4">
					         			<input type="password" name="password" required id="password" class="form-control" required data-fv-notempty-message="密码不能为空" ng-model="password" ng-blur="doCheckPWD()">
					      			</div>
					      		</div>
					      		<div class="form-group">
					      			<label for="password2" class="col-md-3 col-md-offset-1 control-label right-block">重复密码:</label>
					      			<div class="col-md-4">
					         			<input type="password" name="password2" id="password2"  required data-fv-notempty-message="密码重复不能为空"
		                                   data-fv-identical="true" data-fv-identical-field="password" data-fv-identical-message="两次输入密码不同" class="form-control" ng-model="password2" ng-blur="doCheckPWD2()">
					      			</div>
					      		</div>
					      		<div class="form-group">
					      			<label for="mail" class="col-md-2 col-md-offset-2 control-label right-block">邮箱:</label>
					      			<div class="col-md-4">
					         			<input type="email" name="mail" id="mail" class="form-control" ng-pattern="/^\w+([.-]\w+)*@\w+([.-]\w+)*\.\w+$/" data-fv-regexp-message="邮箱不合法" required ng-model="mail" ng-blur="doCheckEmail()">
					      			</div>
					     	 		<div class="col-md-4">
					       				<span class="red" ng-bind="eml"></span>  
					      			</div>
					      		</div>
					 	 	</div>
					 	 <div class="modal-footer">
					   		 <div class="form-group">
					      		<div class="col-md-1 col-md-offset-5">
					        	<input type="submit" class="btn btn-primary" value="提交" >
					      	</div>
					    </div>
					  </div>
					</form>
				</div>
			</div>
		</div>
      </div>
	</div>
		<marquee scrollamount="5" scrolldelay="0" direction="left">
   			<img src="imgs/index.jpg" alt="" >
   		</marquee>
  </body>
</html>
