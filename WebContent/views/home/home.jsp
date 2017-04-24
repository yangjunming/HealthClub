<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
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
						${sessionScope.User.name}(管理员)
        <a class="btn-success btn" href="<%=basePath%>loginout">退出</a>
						</div>
						<div class="navbar-default sidebar" role="navigation">
								<div class="sidebar-nav navbar-collapse">
										<ul class="nav" id="side-menu">
												<li><a href="<%=basePath%>views/index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>首页</a></li>
												<li><a href="#"><i class="fa fa-laptop nav_icon"></i>监控<span class="fa arrow"></span></a>
														<ul class="nav nav-second-level">
																<li><a href="<%=basePath%>homebase">房间监控</a></li>
														</ul></li>
												<li><a href="#"><i class="fa fa-indent nav_icon"></i>管理<span class="fa arrow"></span></a>
														<ul class="nav nav-second-level">
																<li><a href="<%=basePath%>memberCard/list">会员卡管理</a>
																</li>
																<li><a href="<%=basePath%>views/manager/technician-manager.jsp">技师安排</a></li>
																<li><a href="<%=basePath%>views/manager/manager-user.jsp">人员管理</a></li>
														</ul> <!-- /.nav-second-level --></li>
												<li><a href="#"><i class="fa fa-indent nav_icon"></i>查询<span class="fa arrow"></span></a>
														<ul class="nav nav-second-level">
																<li><a href="<%=basePath%>technician/all_performance">业绩查询</a></li>
																<li><a href="<%=basePath%>views/manager/charges-details.jsp">费用明细查询</a></li>
																<li><a href="<%=basePath%>views/manager/expenditure-details.jsp">收支登记</a></li>
														</ul></li>
										</ul>
								</div>
						</div>
				</nav>
		</div>
		<div id="page-wrapper">
				<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-3">
								<h5>房间${id}</h5>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
								<input id="homeId" hidden="" value="${id}">
										<label>房间大小:</label>
										<c:if test="${size == 1}">
										<input type="text" class="form-control1" readonly="readonly" id="" value="大">
										</c:if> 
										<c:if test="${size == 2}">
										<input type="text" class="form-control1" readonly="readonly" id="" value="中">
										</c:if>
										<c:if test="${size == 3}">
										<input type="text" class="form-control1" readonly="readonly" id="" value="小">
										</c:if>
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>房间收费:</label> <input type="text" class="form-control1" id="charge" value="${charge}">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>是否有客人:</label> <input type="text" class="form-control1" readonly="readonly" id="hasUser" value="">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>开始时间:</label> <input type="text" class="form-control1" readonly="readonly"
												value="<fmt:formatDate value="${startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>" />
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>是否预约:</label> <input type="text" class="form-control1" readonly="readonly" id="isReservation" value="">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>预约时间:</label> <input type="text" class="form-control1" readonly="readonly" value="${resTime}">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<footer>
						<div class="form-actions">
								<div class="row">
										<div class="col-md-8"></div>
										<div class="col-md-4">
												<a class="btn btn-primary" href="<%=basePath%>homebase">返回</a>
												<a class="btn btn-primary" href="javascript:save();">保存</a>
										</div>
								</div>
						</div>
				</footer>
		</div>
		<div class="col-md-3 widget widget1"></div>
		<!-- /#wrapper -->
		<!-- Bootstrap Core JavaScript -->
		<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function() {
				var isReservation = "${isReservation}";
				var hasUser = "${hasUser}";
				var size = "${size}"
				console.log(size);
				if (isReservation == 0) {
					$("#isReservation").val("没有预约");
				} else if (isReservation == 1) {
					$("#isReservation").val("已经预约");
				}

				if (hasUser == 0) {
					$("#hasUser").val("没有客人");
				} else {
					$("#hasUser").val("有客人");
				}
			});
			function save(){
				var datas = {
            "id": $("#homeId").val(),
            "charge" : $("#charge").val(),
        }
    $.ajax({
    type: "post",
    url: "<%=basePath%>home/updateHome",
    contentType : "application/json;charset=utf-8",
    data : JSON.stringify(datas),
        dataType : "json",
        async : false,
        success : function(data) {
        	console.log(data);
            if(data){
                alert("修改成功");
                window.location.href="<%=basePath%>homebase";
            }
        }
    });
			}
		</script>
		</div>
</body>
</html>
