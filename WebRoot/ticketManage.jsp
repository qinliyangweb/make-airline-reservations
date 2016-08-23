<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>机票分销首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	  <style>
  	*{
  		padding:0;
  		margin:0;
  	}
  	artical,section,.ctr{
  		margin:0 auto;
  	}
	.lrpadding{
		padding-left:0;
		padding-right:0;
	}
	
  	.form-control-inline{
  		display:inline;
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
		 			<li><a href="flightManage.jsp">航班管理</a></li>
		 			<li class="active"><a href="ticketManage.jsp">票数管理</a></li>
		 			<li><a href="myOrder.jsp">机票预订</a></li>
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
	<div class="row col-md-12">
	<form action="" class="form-horizontal">
		
		<h4 class="col-md-4   form-group lrpadding">
			<label for="" class="col-md-3 control-label right-block lrpadding">航班号：</label>
			<div class="col-md-4">
				<input name="no" id="" class="form-control lrpadding "  placeholder="航班号">
			</div>
			<div  class="col-md-3">
				<button  type="button" class="btn btn-default">查询</button>
			</div>
		</h4> 
		</form>
	</dir>
</div>
<div class="container">
	<div class="row">
		<table class="table">
			<thead>
				<tr class="active">
					<th class="col-md-1 text-center table-bordered">编号</th>
   					<th class="col-md-1 text-center table-bordered">航班号</th>
   					<th class="col-md-2 text-center table-bordered">出发城市</th>
   					<th class="col-md-2 text-center table-bordered">到达城市</th>
   					<th class="col-md-2 text-center table-bordered">时间区间</th>
   					<th class="col-md-2 text-center table-bordered">航空公司</th>
   					<th class="col-md-2 text-center table-bordered">操作</th>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
			<tfoot>
				<tr>
    				<td class="col-md-12 text-center" colspan="7">
    					<ul class="pagination">
						  <li><a href="#">&laquo;</a></li>
					 	 <li><a href="#">1</a></li>				 
					  	<li><a href="#">&raquo;</a></li>
					</ul>
    					</td>
    				</tr>
			</tfoot>
		</table>
	</div>
</div>
  </body>
</html>
