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
	<script type="text/javascript" src="angular/angular.min.js"></script>
	<script type="text/javascript" src="angular/angular-route.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="bootstrap/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/ticketManage_1.js"></script>
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
		 			<li><a href="lightManage.jsp">航班管理</a></li>
		 			<li><a href="ticketManage.jsp">票数管理</a></li>
		 			<li><a href="myOrder.jsp">机票预订</a></li>
		 			<li><a href="order.jsp">我的订单</a></li>
		 			<li class="active"><a href="ticketManage_1.jsp">我的信息</a></li>
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
		<form role="form" class="form-horizontal" >
      			<h4 class="col-md-2  form-group lrpadding text-center">
					<label for="no" class="col-md-12 control-label "><span>XXXX</span>次航班</label>
				</h4>
				<h4 class="col-md-8 col-md-push-4  form-group lrpadding text-right">
					<div class="col-md-4">
						<div class="form-group">
			                <label for="dtp_input2" class="col-md-5 control-label">日期：</label>
			                <div class="input-group date form_date col-md-6" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
			                    <input class="form-control" size="16" type="text" value="" readonly>
			                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
			                </div>
							<input type="hidden" id="dtp_input2" value="" /><br/>
			            </div>
					</div>
					<div  class="col-md-1">
						<button  type="button" class="btn btn-default">查询</button>
					</div>
					<div  class="col-md-1">
						<button  type="button" class="btn btn-danger" onclick="doaddtjia()">添加</button>
					</div>
					<div  class="col-md-2">
						<button  type="button" class="btn btn-success">一键提交</button>
					</div>
				</h4> 
		 	</form>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-12">
      		<table class="table">
      			<thead>
      				<tr class="active">
      					<th class="col-md-2 text-center table-bordered"></th>
      					<th class="col-md-1 text-center table-bordered">序号</th>
      					<th class="col-md-3 text-center table-bordered">日期</th>
      					<th class="col-md-4 text-center table-bordered">票数</th>
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
</div>

<!-- 修改 -->
	<div class="modal fade" id="hbxiug"  tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content" >
						<div class="modal-header">
					 	 	<button class="close" data-dismiss="modal">&times;</button>
					  		<h2 class="text-center">IU001航班</h2>
						</div>
						<form role="form" class="form-horizontal" method="post" >
					  		<div class="modal-body">
					    		<div class="form-group">
					      			<label for="id" class="col-md-2 col-md-offset-2 control-label right-block">ID：</label>
					      			<div class="col-md-4">
					        			<input name="id" id="id" class="form-control">
					      			</div>
					      			<div class="col-md-4">
					        			<span id="sp0"></span>  
					      			</div>
					    		</div>
					    		<div class="form-group">
					      			<label for="depatureDate" class="col-md-2 col-md-offset-2 control-label right-block">日期:</label>
					      			<div class="col-md-4">
					         			<input type="text" name="depatureDate" id="depatureDate" class="form-control">
					      			</div>
					     	 		<div class="col-md-4">
					       				<span id="sp1"></span>  
					      			</div>
					      		</div>
					      		<div class="form-group">
					      			<label class="col-md-2 col-md-offset-2 control-label right-block">票数:</label>
					      			<label for="economyNo" class="col-md-2  control-label right-block">经济舱:</label>
					      			<div class="col-md-2">
					         			<input type="text" name="economyNo" id="economyNo" class="form-control">
					      			</div>
					      		</div>
					      		<div class="form-group">
					      			<label for="firstNo" class="col-md-2 col-md-offset-4  control-label right-block">头等舱:</label>
					      			<div class="col-md-2">
					         			<input type="text" name="firstNo" id="firstNo" class="form-control">
					      			</div>
					      		</div>
					 	 	</div>
					 	 	<div class="modal-footer">
					   			<div class="form-group">
					      			<div class="col-md-1 col-md-offset-4">
					        			<input type="submit" class="btn btn-primary" value="提交">
					      			</div>
					      			<div class="col-md-2 col-md-offset-1">
					        			<button type="button" class="btn btn-default" onclick="doHide($('#mfTick'))">取消</button>
					      			</div>
					   			</div>
					  		</div>
						</form>
					</div>
				</div>
			</div>
			<!-- 添加 -->
			<div class="modal fade" id="addtjia"  tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content" >
						<div class="modal-header">
					 	 	<button class="close" data-dismiss="modal">&times;</button>
					  		<h2 class="text-center">IU001航班</h2>
						</div>
						<form role="form" class="form-horizontal" method="post" >
					  		<div class="modal-body">
					        	<div class="form-group">
							          <label for="dtp_input3" class="col-md-2 col-md-offset-2 control-label">日期：</label>
							          <div class="input-group date form_time col-md-4" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
							              <input class="form-control" size="12" type="text" value="" name="depatureDate" readonly>
							              <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										  <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
							          </div>
									   <input type="hidden" id="dtp_input3" value="" /><br/>
							   </div>
					    		<div class="form-group">
					      			<label for="duration" class="col-md-2 col-md-offset-2 control-label right-block">连续:</label>
					      			<div class="col-md-2 ">
					         			<input type="text" name="duration" id="duration" class="form-control">
					      			</div>
					     	 		<label class="col-md-1 control-label left-block">天</label>
					      		</div>
					      		<div class="form-group">
					      			<label class="col-md-2 col-md-offset-2 control-label right-block">票数:</label>
					      			<label for="economyNo" class="col-md-2  control-label right-block ">经济舱:</label>
					      			<div class="col-md-2">
					         			<input type="text" name="economyNo" id="economyNo" class="form-control">
					      			</div>
					      		</div>
					      		<div class="form-group">
					      			<label for="firstNo" class="col-md-2 col-md-offset-4  control-label right-block">头等舱:</label>
					      			<div class="col-md-2">
					         			<input type="text" name="firstNo" id="firstNo" class="form-control">
					      			</div>
					      		</div>
					 	 	</div>
					 	 	<div class="modal-footer">
					   			<div class="form-group">
					      			<div class="col-md-1 col-md-offset-4">
					        			<input type="submit" class="btn btn-primary" value="提交">
					      			</div>
					      			<div class="col-md-2 col-md-offset-1">
					        			<button type="button" class="btn btn-default" onclick="doHide($('#addTick'))">取消</button>
					      			</div>
					   			</div>
					  		</div>
						</form>
					</div>
			</div>
		</div>
  </body>
</html>
