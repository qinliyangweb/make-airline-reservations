<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的订单查看和退票界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/myOrder.js"></script>
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
		 			<li><a href="lightManage.jsp">航班管理</a></li>
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
		<div class="col-md-12">
      		<table class="table">
      			<thead>
      				<tr class="active table-bordered">
      					<th class="col-md-1 text-center">序号</th>
      					<th class="col-md-1 text-center">订单号</th>
      					<th class="col-md-1 text-center">航班号</th>
      					<th class="col-md-1 text-center">机型</th>
      					<th class="col-md-2 text-center">城市区间</th>
      					<th class="col-md-2 text-center">时间区间</th>
      					<th class="col-md-1 text-center">仓位</th>
      					<th class="col-md-1 text-center">票价</th>
      					<th class="col-md-1 text-center">操作</th>
      				</tr>
      			</thead>
      			<tbody id="tb">

      			</tbody>
      			<tfoot>
      				<tr>
      					<td class="col-md-12 text-center" colspan="7">
      						<ul class="pagination">

							</ul>
      					</td>
      				</tr>
      			</tfoot>
      		</table>
      		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="modal fade" id="tp"  tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content" >
						<div class="modal-header">
					 	 	<button class="close" data-dismiss="modal">X</button>
					  		<h2 class="text-center">警告</h2>
						</div>
					  		<div class="modal-body">
					    		<h2 class="text-center">您是否确认退票？</h2>
					 	 	</div>
					 	 	<div class="modal-footer">
					   			<div class="form-group">
					      			<div class="col-md-1 col-md-offset-5">
					        			<input type="submit" class="btn btn-primary" value="确认" onclick="dotp()">
					      			</div>
					   			</div>
					  		</div>
						</form>
					</div>
			</div>
		</div>
	</div>
</div>
  </body>
</html>
