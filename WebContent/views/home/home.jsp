<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="<%=basePath%>resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<%=basePath%>resources/css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="<%=basePath%>resources/css/lines.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>resources/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="<%=basePath%>resources/js/jquery.min.js"></script>
<link href="<%=basePath%>resources/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>resources/js/metisMenu.min.js"></script>
<script src="<%=basePath%>resources/js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="<%=basePath%>resources/js/d3.v3.js"></script>
<script src="<%=basePath%>resources/js/rickshaw.js"></script>
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
              <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand">欢迎光临</a>
            </div>
            <div class="nav navbar-nav navbar-right">
            <a class="btn-success btn" href="<%=basePath%>loginout">退出</a>
            </div>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<%=basePath%>views/index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>首页</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-laptop nav_icon"></i>监控<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li style="border-right:3px solid #fff;">
                                    <a href="<%=basePath%>homebase"><strong>房间监控</strong></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=basePath%>memberCard/list">会员卡管理</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>views/manager/technician-manager.jsp">技师安排</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>views/manager/manager-user.jsp">人员管理</a>
                                </li>
                                <li>
                                    <a href="typography.html">收支登记</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>查询<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="graphs.html">业绩查询</a>
                                </li>
                                <li>
                                    <a href="typography.html">费用明细查询</a>
                                </li>
                                <li>
                                    <a href="typography.html">收支登记</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="page-wrapper">
        <div class="row">
		  <div class="col-md-5">
		  </div>
		  <div class="col-md-3">
        <h5>房间${id}</h5>
        </div></div>
        <div class="form-group">
		  <div class="row">
		  <div class="col-md-4">
			</div>
			<div class="col-md-4">
			 <label>是否有客人:</label>
				<input type="text" class="form-control1" readonly="readonly" id="hasUser" value="" >
			</div>
			<div class="clearfix"> </div>
		   </div>
		</div>
		<div class="form-group">
		  <div class="row">
		  <div class="col-md-4">
			</div>
			<div class="col-md-4">
			 <label>开始时间:</label>
				<input type="text" class="form-control1" readonly="readonly" value="${startTime}">
			</div>
			<div class="clearfix"> </div>
		   </div>
		</div>
		<div class="form-group">
		  <div class="row">
		  <div class="col-md-4">
			</div>
			<div class="col-md-4">
			 <label>是否预约:</label>
				<input type="text" class="form-control1" readonly="readonly" id="isReservation" value="">
			</div>
			<div class="clearfix"> </div>
		   </div>
		</div>
		<div class="form-group">
		  <div class="row">
		  <div class="col-md-4">
			</div>
			<div class="col-md-4">
			 <label>预约时间:</label>
				<input type="text" class="form-control1" readonly="readonly" value="${resTime}">
			</div>
			<div class="clearfix"> </div>
		   </div>
		</div>
		<footer>
								<div class="form-actions">
										<div class="row">
												<div class="col-md-8"></div>
												<div class="col-md-4">
														<a class="btn btn-primary" href="<%=basePath%>homebase">返回</a>
												</div>
												</div>
										</div>
						</footer>
        </div>
        <div class="col-md-3 widget widget1">
        </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
    <script type="text/javascript">
$(function(){
var isReservation = "${isReservation}";
var hasUser = "${hasUser}";
console	.log(hasUser);
if(isReservation==0){
	$("#isReservation").val("没有预约");
}else if(isReservation == 1){
	$("#isReservation").val("已经预约");
}

if(hasUser==0){
	$("#hasUser").val("没有客人");
}else{
	$("#hasUser").val("有客人");
}
});
</script>
</div>
</body>
</html>
