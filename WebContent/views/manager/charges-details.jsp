<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>resources/">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
		content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<%=basePath%>resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>resources/css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="<%=basePath%>resources/js/jquery.min.js"></script>
<!----webfonts--->
<!---//webfonts--->
<!-- chart -->
<script src="<%=basePath%>resources/js/Chart.js"></script>
<link href="<%=basePath%>resources/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>resources/js/metisMenu.min.js"></script>
<script src="<%=basePath%>resources/js/custom.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
<!-- //chart -->
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
                                <li>
                                    <a href="<%=basePath%>homebase">房间监控</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li style="border-right:3px solid #fff;">
                                    <a href="<%=basePath%>memberCard/list"><strong>会员卡管理</strong></a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>views/manager/technician-manager.jsp">技师安排</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>views/manager/manager-user.jsp">人员管理</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>查询<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="<%=basePath%>technician/all_performance">业绩查询</a></li>
                                <li>
                                    <a href="<%=basePath%>views/manager/charges-details.jsp">费用明细查询</a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>views/manager/expenditure-details.jsp">收支登记</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
		</div>
				<div id="page-wrapper">
						<div class="graphs">
								<div class="graph_box">
										<div class="col-md-4 grid_2">
												<div class="grid_1">
												<div style="text-align:center;">
														<div style="width: 10px; height: 10px; background-color: #ef553a;display:inline;margin: 0 auto">SPA</div>
														<div style="width: 10px; height: 10px; background-color: #00aced;display:inline;margin: 0 auto">按摩</div>
														<div style="width: 10px; height: 10px; background-color: #9358ac;display:inline;margin: 0 auto">拔罐</div>
														</div>
														<canvas id="bar" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
												</div>
										</div>
										<div class="col-md-4 grid_2">
												<div class="grid_1">
														<div style="width: 10px; height: 10px; background-color: #ef553a;display:inline;margin: 0 auto">SPA</div>
														<div style="width: 10px; height: 10px; background-color: #00aced;display:inline;margin: 0 auto">按摩</div>
														<div style="width: 10px; height: 10px; background-color: #9358ac;display:inline;margin: 0 auto">拔罐</div>
														<canvas id="pie" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
												</div>
										</div>
										<div class="clearfix"></div>
								</div>
								<script>
								var barChartData1 = [0,0,0,0,0,0,0,0,0,0,0,0];
								var barChartData2 = [0,0,0,0,0,0,0,0,0,0,0,0];
								var barChartData3 = [0,0,0,0,0,0,0,0,0,0,0,0];
								var spaAmount = 0;
								var massAmount = 0;
								var cupAmount = 0;
								$(function(){
									$.ajax({
								    type: "get",
								    url: "<%=basePath%>order/getAchievementOfMonth",
								    contentType : "application/json;charset=utf-8",
								    data : {},
										dataType : "json",
										async : false,
										success : function(data) {
											if(data.length>0){
												for(var i = 0;i<data.length;i++){
													var moth = data[i].month;
													if(moth=="01"){
														barChartData1[0] = data[i].spaAmount;
														barChartData2[0] = data[i].massAmount;
														barChartData3[0] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="02"){
														barChartData1[1] = data[i].spaAmount;
														barChartData2[1] = data[i].massAmount;
														barChartData3[1] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="03"){
														barChartData1[2] = data[i].spaAmount;
														barChartData2[2] = data[i].massAmount;
														barChartData3[2] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="04"){
														barChartData1[3] = data[i].spaAmount;
														barChartData2[3] = data[i].massAmount;
														barChartData3[3] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="05"){
														barChartData1[4] = data[i].spaAmount;
														barChartData2[4] = data[i].massAmount;
														barChartData3[4] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="06"){
														barChartData1[5] = data[i].spaAmount;
														barChartData2[5] = data[i].massAmount;
														barChartData3[5] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="07"){
														barChartData1[6] = data[i].spaAmount;
														barChartData2[6] = data[i].massAmount;
														barChartData3[6] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="08"){
														barChartData1[7] = data[i].spaAmount;
														barChartData2[7] = data[i].massAmount;
														barChartData3[7] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="09"){
														barChartData1[8] = data[i].spaAmount;
														barChartData2[8] = data[i].massAmount;
														barChartData3[8] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="09"){
														barChartData1[8] = data[i].spaAmount;
														barChartData2[8] = data[i].massAmount;
														barChartData3[8] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="10"){
														barChartData1[9] = data[i].spaAmount;
														barChartData2[9] = data[i].massAmount;
														barChartData3[9] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="11"){
														barChartData1[10] = data[i].spaAmount;
														barChartData2[10] = data[i].massAmount;
														barChartData3[10] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
													}else if(moth=="12"){
														barChartData1[11] = data[i].spaAmount;
														barChartData2[11] = data[i].massAmount;
														barChartData3[11] = data[i].cupAmount;
														spaAmount = spaAmount+data[i].spaAmount;
														massAmount = massAmount+data[i].massAmount;
														cupAmount = cupAmount+data[i].cupAmount;
												}
											}
										}
											var pieData = [ {
												value : spaAmount,
												color : "#ef553a"
											}, {
												value : massAmount,
												color : "#00aced"
											}, {
												value : cupAmount,
												color : "#9358ac"
											}

											];
											new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
										new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);
											}
									});
								})
									
									var barChartData = {
										labels : [ "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月" ],
										datasets : [ {
											fillColor : "#ef553a",
											strokeColor : "#ef553a",
											data : barChartData1
										}, {
											fillColor : "#00aced",
											strokeColor : "#00aced",
											data : barChartData2
										}, {
											fillColor : "#9358ac",
											strokeColor : "#9358ac",
											data : barChartData3
										}
										]

									};
								</script>
						</div>
				</div>
				<!-- /#page-wrapper -->
		</div>
</body>
</html>