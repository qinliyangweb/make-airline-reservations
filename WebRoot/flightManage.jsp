<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>航班管理主界面</title>
    
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
	<script type="text/javascript" src="js/bootstrap-paginator.js"></script>
	<script type="text/javascript" src="bootstrap/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/flightManage.js"></script>
	
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-datetimepicker.min.css"  media="screen">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	
	 <style>
  	*{
  		padding:0;
  		margin:0;
  	}
  	artical,section,.ctr{
  		margin:0 auto;
  	}

  	.form-control-inline{
  		display:inline;
  	}
	#chk{
  		transform:translate(250px,-35px);
  	}
  </style>
  </head>
  <body>
    <div class="container">
   		 	<div class="row  col-md-12 col-sm-12">
   		<img src="imgs/headerlogo.jpg" width="100%">
   	</div>
   	</div>
 <div class="container">   <div class="row">
   		<div class="col-md-9 col-sm-9">
		   		 <ul class="nav nav-pills">
		 			<li><a href="login.jsp">首页</a></li>
		 			<li class="active"><a href="flightManage.jsp">航班管理</a></li>
		 			<li><a href="ticketManage.jsp">票数管理</a></li>
		 			<li><a href="myOrder.jsp">机票预订</a></li>
		 			<li><a href="order.jsp">我的订单</a></li>
		 			<li><a href="ticketManage_1.jsp">我的信息</a></li>
				 </ul>
		</div>
		<div class="col-md-3 col-sm-3 nav nav-pills">
				欢迎，${sessionScope.user.loginName }&nbsp;|&nbsp;
						<a href="javascript:void(0)"  >安全退出</a>
		</div>
	</div>
</div>
<div class="container">
<form action="" class="form-horizontal" role="form">
	<div class="row">
			<table class="table">
					<thead></thead>
      				<tbody>
      					<tr>
	      					<td class="col-md-1"><label for="leaveCity" class="control-label">查询条件：</label></td>
	      					<td class="col-md-1"><label for="leaveCity" class="control-label">出发城市：</label></td>
	      					<td class="col-md-1"><input name="leaveCity" id="leaveCity" class="form-control lrpadding "  placeholder="出发城市"></td>
	      					<td class="col-md-1"><label for="arrivalCity" class="control-label">到达城市：</label></td>
	      					<td class="col-md-1"><input name="arrivalCity" id="arrivalCity" class="form-control"  placeholder="到达城市"></td>
	      					<td class="col-md-1"><label for="no" class="control-label">航班编号：</label></td>
	      					<td class="col-md-1"><input name="no" id="no" class="form-control"  placeholder="航班号"></td>
	      					<td class="col-md-1"><label for="company" class="control-label">航空公司：</label></td>
	      					<td class="col-md-3 col-sm-3" clospan="2">
	      					<div class="form-group">
	      						<label for="" class="col-md-4 control-label">出发时间：</label>
	      						  <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
					                    <input class="form-control" size="10" type="text" value="" readonly>
					                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					                </div>
					                <input type="hidden" id="dtp_input2" value="" />
					                <div class="col-md-1" id="chk">
									<button  type="button" class="btn btn-default">查询</button>
								</div>
					            </div>
	      					</td>
      				</tr>
			</table>
		</div>
	</form>	
		<div class="row">
			 <table class="table text-center">
      	  	 <thead>
      	  	 	<tr class="table-bordered">
      	  	 		<th colspan="10" class="table-bordered">
      	  	 			<button type="button" class="btn btn-default" onclick="dotjia()">添加航班</button>
      	  	 		</th>
      	  	 	</tr>
      	  	 	<tr>
      	  	 		<th class="col-md-1 table-bordered text-center">ID</th>
      	  	 		<th class="col-md-1 table-bordered text-center">航班机号</th>
      	  	 		<th class="col-md-1 table-bordered text-center">航班机型</th>
      	  	 		<th class="col-md-1 table-bordered text-center">总座位数</th>
      	  	 		<th class="col-md-1 table-bordered text-center">出发城市</th>
      	  	 		<th class="col-md-1 table-bordered text-center">到达城市</th>
      	  	 		<th class="col-md-2 table-bordered text-center">时间区间</th>
      	  	 		<th class="col-md-1 table-bordered text-center">航空公司</th>
      	  	 		<th class="col-md-2 table-bordered text-center">价格</th>
      	  	 		<th class="col-md-1 table-bordered text-center">操作</th>
      	  	 	</tr>
      	  	 </thead>
      	  	 <tbody id="tb">

      	  	 </tbody>
      	  	 <tfoot>
      	  	 	<tr>
      	  	 		<td class="col-md-12 col-sm-12 text-center" colspan="10">
      					<ul class="pagination" id="page">
							
						</ul>
      				</td>
      	  	 	</tr>
      	  	 </tfoot>
      	  </table>
		</div>
		<!-- 添加摸态框 -->
		<div class="row">
			<div class="modal fade" id="addtjia"  tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content" >
						<div class="modal-header">
					 	 	<button class="close" data-dismiss="modal" onclick="doAddSBoard()">X</button>
					  		<h2 class="text-center">航班添加</h2>
						</div>
						<form role="form" class="form-horizontal" method="post" id="addmo" return="return false;">
					  		<div class="modal-body">
					    		<div class="form-group">
					      			<label for="no" class="col-md-3 col-sm-3 col-md-offset-1 control-label right-block">航班机号：</label>
					      			<div class="col-md-4 col-sm-4">
					        			<input name="no" id="hb" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label for="company" class="col-md-3 col-sm-3 col-md-offset-1 control-label right-block">航空公司：</label>
					      			<div class="col-md-4 col-sm-4">
					        			<input name="company" id="company" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label for="model" class="col-md-3 col-sm-3 col-md-offset-1 control-label right-block">航班机型：</label>
					      			<div class="col-md-4 col-sm-4">
					        			<input name="model" id="model" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label for="totleSeats" class="col-md-3 col-sm-3 col-md-offset-1 control-label right-block">总座位数：</label>
					      			<div class="col-md-4 col-sm-4">
					        			<input name="totleSeats" id="totleSeats" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label for="leaveCity" class="col-md-3 col-sm-3 col-md-offset-1 control-label right-block">出发城市：</label>
					      			<div class="col-md-4 col-sm-4">
					        			<input name="leaveCity" id="leaveCity" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label for="arrivalCity" class="col-md-3 col-sm-3 col-md-offset-1 control-label right-block">到达城市：</label>
					      			<div class="col-md-4 col-sm-4">
					        			<input name="arrivalCity" id="arrivalCity" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label class="col-md-3 col-sm-3 col-md-offset-1 control-label right-block">价格:</label>
					      			<label for="economyPrice" class="col-md-2 col-sm-2  control-label right-block">经济舱:</label>
					      			<div class="col-md-2 col-sm-2">
					         			<input type="text" name="economyPrice" id="economyPrice" class="form-control">
					      			</div>
					      		</div>
					      		
					      		<div class="form-group">
					      			<label for="firstPrice" class="col-md-2 col-sm-2 col-md-offset-4  control-label right-block">头等舱:</label>
					      			<div class="col-md-2 col-sm-2">
					         			<input type="text" name="firstPrice" id="firstPrice" class="form-control">
					      			</div>
					      		</div>
					      		
					      		<div class="form-group">
					                <label for="leaveTime" class="col-md-3 col-sm-3 col-md-offset-1 control-label">出发时间:</label>
					                <div class="input-group date form_time col-md-4 col-sm-4" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
					                    <input class="form-control" size="16" type="text" value="" readonly id="leaveTime" value="" name="leaveTime" >
					                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
					                </div>
									<input type="hidden" /><br/>
					            </div>
					            
					            <div class="form-group">
					                <label for="arrivalTime" class="col-md-3 col-sm-3 col-md-offset-1 control-label">到达时间:</label>
					                <div class="input-group date form_time col-md-4 col-sm-4" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
					                    <input class="form-control" size="16" type="text" value="" readonly id="arrivalTime" name="arrivalTime" >
					                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
					                </div>
									<input type="hidden" value="" /><br/>
					            </div>
					 	 	</div>
					 	 	<div class="modal-footer">
					   			<div class="form-group">
					      			<div class="col-md-1 col-md-offset-5">
					        			<input type="submit" class="btn btn-primary" value="提交" onclick="doadddFlight()">
					      			</div>
					   			</div>
					  		</div>
						</form>
					</div>
			</div>
		</div>
		</div>
		<!-- 修改摸态框 -->
		
		<dir class="row">
			<div class="modal fade" id="xiug"  tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content" >
						<div class="modal-header">
					 	 	<button class="close" data-dismiss="modal">X</button>
					  		<h2 class="text-center">航班修改</h2>
						</div>
						<form role="form" class="form-horizontal" method="post" id="doMod">
					  		<div class="modal-body">
					  		
					  			<div class="form-group">
					      			<label for="nos" class="col-md-3 col-md-offset-1 control-label right-block">数据库ID：</label>
					      			<div class="col-md-4">
					        			<input name="id" id="ids" class="form-control" readonly>
					      			</div>
					    		</div>
					  		
					    		<div class="form-group">
					      			<label for="no" class="col-md-3 col-md-offset-1 control-label right-block">航班机号：</label>
					      			<div class="col-md-4">
					        			<input name="no" id="hbs" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label for="company" class="col-md-3 col-md-offset-1 control-label right-block">航空公司：</label>
					      			<div class="col-md-4">
					        			<input name="company" id="companys" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label for="model" class="col-md-3 col-md-offset-1 control-label right-block">航班机型：</label>
					      			<div class="col-md-4">
					        			<input name="model" id="models" class="form-control">
					      			</div>
					    		</div>
					    		
					    		<div class="form-group">
					      			<label for="totleSeats" class="col-md-3 col-md-offset-1 control-label right-block">总座位数：</label>
					      			<div class="col-md-4">
					        			<input name="totleSeats" id="totleSeatss" class="form-control">
					      			</div>
					    		</div>
					    		<div class="form-group">
					      			<label for="leaveCity" class="col-md-3 col-md-offset-1 control-label right-block">出发城市：</label>
					      			<div class="col-md-4">
					        			<input name="leaveCity" id="leaveCitys" class="form-control">
					      			</div>
					    		</div>
					    		<div class="form-group">
					      			<label for="arrivalCity" class="col-md-3 col-md-offset-1 control-label right-block">到达城市：</label>
					      			<div class="col-md-4">
					        			<input name="arrivalCity" id="arrivalCitys" class="form-control">
					      			</div>
					    		</div>
					    		<div class="form-group">
					      			<label class="col-md-3 col-md-offset-1 control-label right-block">价格:</label>
					      			<label for="economyPrice" class="col-md-2  control-label right-block">经济舱:</label>
					      			<div class="col-md-2">
					         			<input type="text" name="economyPrice" id="economyPrices" class="form-control">
					      			</div>
					      		</div>
					      		<div class="form-group">
					      			<label for="firstPrice" class="col-md-2 col-md-offset-4  control-label right-block">头等舱:</label>
					      			<div class="col-md-2">
					         			<input type="text" name="firstPrice" id="firstPrices" class="form-control">
					      			</div>
					      		</div>
					      		<div class="form-group">
					                <label for="leaveTime" class="col-md-3 col-md-offset-1 control-label">出发时间:</label>
					                <div class="input-group date form_time col-md-4" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
					                    <input class="form-control" size="16" type="text" value="" readonly id="leaveTimes" name="leaveTime">
					                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
					                </div>
									<input type="hidden"  value=""/><br/>
					            </div>
					            <div class="form-group">
					                <label for="arrivalTime" class="col-md-3 col-md-offset-1 control-label">到达时间:</label>
					                <div class="input-group date form_time col-md-4" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
					                    <input class="form-control" size="16" type="text" value="" readonly id="arrivalTimes" name="arrivalTime">
					                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
					                </div>
									<input type="hidden"  value="" /><br/>
					            </div>
					 	 	</div>
					 	 	<div class="modal-footer">
					   			<div class="form-group">
					      			<div class="col-md-1 col-md-offset-5">
					        			<input type="submit" class="btn btn-primary" value="提交" onclick="doModif()">
					      			</div>
					   			</div>
					  		</div>
						</form>
					</div>
				</div>
			</div>
		</dir>
	</div>

  </body>
</html>
