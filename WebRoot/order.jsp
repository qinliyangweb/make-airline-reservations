<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>可定机票查询界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="angular/angular.min.js"></script>
	<script type="text/javascript" src="angular/angular-route.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="bootstrap/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/order.js"></script>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-datetimepicker.min.css"  media="screen">
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
		 			<li><a href="myOrder.jsp">机票预订</a></li>
		 			<li class="active"><a href="order.jsp">我的订单</a></li>
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
		<form class="form-inline">
			  <div class="form-group">
			  	<label for=""><h4>航班查询：</h4></label>
			    <label for="">出发城市：</label>
			    <input type="text" class="form-control" id="" placeholder="出发城市">
			  </div>
			  <div class="form-group">
			    <label for="">到达城市：</label>
			    <input type="text" class="form-control" id="" placeholder="到达城市">
			  </div>
			  <div class="form-group">
			  	<label for="">出发日期：</label>
			  		<div class="input-group date form_date  " data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
		                  <input class="form-control" type="text" value="" name="depatureDate" readonly>
		                  <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						  <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		             </div>
		             <input type="hidden" id="dtp_input1" value="" /><br/>
			  </div>
			  <button type="button" class="btn btn-default">查询</button>
		</form>
	</div>
</div>

<div class="container">
	<div class="row">
		<table class="table">
      			<thead>
      				<tr class="active table-bordered">
      					<th class="col-md-1 text-center">序号</th>
      					<th class="col-md-1 text-center">航班号</th>
      					<th class="col-md-2 text-center">所属航班公司</th>
      					<th class="col-md-2 text-center">飞机机型</th>
      					<th class="col-md-1 text-center">出发时间</th>
      					<th class="col-md-1 text-center">到达时间</th>
      					<th class="col-md-2 text-center">票价</th>
      					<th class="col-md-2 text-center">操作</th>
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
<!-- 预定单 -->
<div class="modal fade" id="yud"  tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content" >
				<div class="modal-header">
			 	 	<button class="close" data-dismiss="modal">x</button>
			  		<h2 class="text-center">IU001航班</h2>
				</div>
				<form  class="form-horizontal" method="post" >
			  		<div class="modal-body">
			    		<div class="form-group">
			      			<label for="" class="col-md-3 col-md-offset-1 control-label">航班号：</label>
			      			<div class="col-md-4">
			        			<input name="" id="" class="form-control">
			      			</div>
			    		</div>
			    		<div class="form-group">
			      			<label for="" class="col-md-3 col-md-offset-1 control-label">乘车人姓名：</label>
			      			<div class="col-md-4">
			        			<input name="" id="" class="form-control">
			      			</div>
			    		</div>
			    		<div class="form-group">
			      			<label for="" class="col-md-3 col-md-offset-1 control-label">乘车人身份证号:</label>
			      			<div class="col-md-4">
			        			<input name="" id="" class="form-control">
			      			</div>
			    		</div>
			    		<div class="form-group">
			      			<label class="col-md-2 col-md-offset-2 control-label right-block">城市区间:</label>
			      			<div class="col-md-7">
				      			<div class="col-md-5 col-md-pull-1">
				         			<input type="text" name="leaveCity" id="leaveCity" class="form-control" value="">
				      			</div>
				      			<label class="col-md-1 col-md-pull-2 control-label">
				      			 	<span>—</span>
				      			</label>
				      			<div class="col-md-5 col-md-pull-2">
				         			<input type="text" name="arrivalCity" id="arrivalCity" class="form-control" value="">
				      			</div>
				      		</div>
			      		</div>
			      		<div class="form-group">
			      			<label class="col-md-2 col-md-offset-2 control-label right-block">时间区间:</label>
			      			<div class="col-md-7">
				      			<div class="col-md-5 col-md-pull-1">
				         			<input type="text" name="leaveTime" id="leaveTime" class="form-control" value="">
				      			</div>
				      			<label class="col-md-1 col-md-pull-2 control-label">
				      			 	<span>—</span>
				      			</label>
				      			<div class="col-md-5 col-md-pull-2">
				         			<input type="text" name="arrivalTime" id="arrivalTime" class="form-control" value="">
				      			</div>
				      		</div>
			      		</div>
			      		<div class="form-group">
			      			<label for="firstNo" class="col-md-2 col-md-offset-2  control-label right-block">价格:</label>
			      			<div class="col-md-5">
			         			<input type="text" name="firstPrice" id="firstPrice" class="form-control">
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
  </body>
</html>
