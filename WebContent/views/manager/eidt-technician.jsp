<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- Graph CSS -->
<link href="<%=basePath%>resources/css/lines.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>resources/css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="<%=basePath%>resources/js/jquery.min.js"></script>
<!----webfonts--->
<!-- <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'> -->
<!---//webfonts--->
<!-- Nav CSS -->
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
						<div class="row" style="padding-top: 30px">
								<div class="col-md-5"></div>
								<div class="col-md-3">
										<h5>技师安排</h5>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<input id="id" hidden="" value="${param.id}"> <label>姓名:</label> <input type="text"
														class="form-control1" id="name" name="name" value="">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>电话:</label> <input type="text" class="form-control1" value="" id="mobile" name="mobile">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>收费标准:</label> <br>
													<label>SPA标准:</label><input type="text" style="margin-top: 5px" id="spaCharge" name="spaCharge" value=""><label>元/小时</label><br>
													<label>按摩标准:</label><input type="text" style="margin-top: 5px"  id="massCharge" name="massCharge" value=""><label>元/小时</label><br>
													<label>拔罐标准:</label><input type="text" style="margin-top: 5px" id="cupCharge" name="cupCharge" value=""><label>元/小时</label>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label class="control-label ">技师等级：</label> <select id="grade" name="grade"
														style="width: 100px; padding-left: 2px">
														<!-- 														(1:初级，2：中级，3：高级) -->
														<option value="1">初级技师</option>
														<option value="2">中级技师</option>
														<option value="3">高级技师</option>
												</select>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label class="control-label " style="margin-right: 25px">状态：</label> <select id="technicianStatus"
														name="technicianStatus" style="width: 100px; padding-left: 20px">
														<option value="4">正常</option>
														<option value="2">下牌</option>
														<option value="1">停牌</option>
														<option value="3">休假</option>
												</select>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<footer>
								<div class="form-actions">
										<div class="row">
												<div class="col-md-8"></div>
												<div class="col-md-4">
														<a class="btn btn-primary" href="${pageContext.request.contextPath}/views/manager/technician-manager.jsp">返回</a>
														<a class="btn btn-primary" href="javascript:save();">保存</a>
												</div>
												</div>
										</div>
						</footer>
						</div>
						<!-- /#wrapper -->
						<!-- Bootstrap Core JavaScript -->
						<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript">
$(function (){
	var id = $("#id").val();
	//加载人员信息
	$.ajax({
    type: "get",
    url: "<%=basePath%>user/getTechnicianDetail?id="+id+"",
			data : {},
			dataType : "json",
			async:false,
			success : function(data) {
				console.log(data);
					$("#mobile").val(data.mobile);
					$("#name").val(data.name);
					$("#spaCharge").val(data.spaCharge);
					$("#massCharge").val(data.massCharge);
					$("#cupCharge").val(data.cupCharge);
					$("#grade").val(data.grade);
					$("technicianStatus").val(data.technicianStatus);
				}
		});
	
	})

	function save() {
	var id = $("#id").val();
		var datas = {
				"id" : id,
				"mobile" : $("#mobile").val(),
				"name" : $("#name").val(),
				"spaCharge" : $("#spaCharge").val(),
				"massCharge" : $("#massCharge").val(),
				"cupCharge" : $("#cupCharge").val(),
				"grade" : $("#grade").val(),
				"technicianStatus" : $("#technicianStatus").val()
			}
		$.ajax({
	    type: "post",
	    url: "<%=basePath%>user/editTechnician",
	    contentType : "application/json;charset=utf-8",
	    data : JSON.stringify(datas),
			dataType : "json",
			async : false,
			success : function(data) {
				if(data){
					window.location.href="<%=basePath%>views/manager/technician-manager.jsp";
				}
			}
		});
	}
</script>
</html>
