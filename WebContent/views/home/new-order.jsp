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
<link href="<%=basePath%>resources/css/select.css" rel='stylesheet' type='text/css' />
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
								<a class="btn-success btn" href="<%=basePath%>views/login.jsp">退出</a>
						</div>
						<div class="navbar-default sidebar" role="navigation">
								<div class="sidebar-nav navbar-collapse">
										<ul class="nav" id="side-menu">
												<li><a href="index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>首页</a></li>
												<li><a href="#"><i class="fa fa-laptop nav_icon"></i>监控<span class="fa arrow"></span></a>
														<ul class="nav nav-second-level">
																<li><a href="<%=basePath%>homebase">房间监控</a></li>
														</ul></li>
												<li><a href="#"><i class="fa fa-indent nav_icon"></i>管理<span class="fa arrow"></span></a>
														<ul class="nav nav-second-level">
																<li><a href="<%=basePath%>memberCard/list">会员卡管理</a></li>
																<li><a href="<%=basePath%>views/manager/technician-manager.jsp">技师安排</a></li>
																<li><a href="<%=basePath%>views/manager/manager-user.jsp">人员管理</a></li>
																<li><a href="typography.html">收支登记</a></li>
														</ul> <!-- /.nav-second-level --></li>
												<li><a href="#"><i class="fa fa-indent nav_icon"></i>查询<span class="fa arrow"></span></a>
														<ul class="nav nav-second-level">
																<li><a href="graphs.html">业绩查询</a></li>
																<li><a href="typography.html">费用明细查询</a></li>
																<li><a href="typography.html">收支登记</a></li>
														</ul></li>
										</ul>
								</div>
						</div>
				</nav>
		</div>
		<div id="page-wrapper">
				<div class="row" style="padding-top: 40px">
						<div class="col-md-5"></div>
						<div class="col-md-3">
								<h3>欢迎使用养生会馆服务</h3>
						</div>
				</div>
				<div class="form-group" style="padding-top: 40px">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>房间号：</label> <input readonly="readonly" id="homeNum" value="${param.id}">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>技师选择：</label> <select id="grade"
												style="width: 120px; height: 30px; padding-left: 30px; font-size: 0.85em"
												onchange="javascript:showTechnician();">
												<option value="1">初级技师</option>
												<option value="2">中级技师</option>
												<option value="3">高级技师</option>
										</select> <select id="technicianId" style="width: 150px; height: 30px; padding-left: 30px; font-size: 0.85em">
										</select>
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>服务项目：</label><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
												name="chkItem" id="spa" value="1">SPA&nbsp;&nbsp; <input type="checkbox" name="chkItem" id="mass"
												value="2">按摩&nbsp;&nbsp; <input type="checkbox" name="chkItem" id="cup" value="3">拔罐
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>客户手机号码：</label> <input type="text" class="form-control1" id="mobile" value=""
												onblur="javascript:mobiles(this)">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>客户姓名：</label> <input type="text" class="form-control1" id="userName" value="">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-7"></div>
								<a class="btn btn-primary" href="javascript:save();">提交订单</a>
								<div class="clearfix"></div>
						</div>
				</div>
		</div>
		<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(function (){
			showTechnician();
		})
		function showTechnician(){
			var grade = $("#grade").val();
			$("#technicianId option").remove();
		//加载房间
			$.ajax({
		    type: "get",
		    url: "<%=basePath%>technician/getTechnicianByGrade?grade="+grade+"",
					data : {},
					dataType : "json",
					async:false,
					success : function(data) {
						console.log(data);
						if(data.length==0){
							$("#technicianId").append("<option value='0'>无技师可选择</option>");
						}else{
						for (var i = 0; i < data.length; i++) {
							$("#technicianId").append("<option value='"+data[i].id+"'>" + data[i].name + "</option>");
						}
						}
					}
				})
		}
		
		function save(){
			var isSpa =0;
			var isMass = 0;
			var isCup = 0;
			$('input:checkbox[name=chkItem]').each(function() {
				if($(this).context.checked){
					if($(this).val()==1){
						isSpa = 1;
					}else if($(this).val()==2){
						isMass =1;
					}else if($(this).val()==3){
						isCup =1;
					}
				}
			});
				var datas = {
            "technicianId" : $("#technicianId").val(),
            "roomId" : $("#homeNum").val(),
            "isSpa" : isSpa,
            "isMass" : isMass,
            "isCup" : isCup,
             "mobile":$("#mobile").val()
        }
    $.ajax({
    type: "post",
    url: "<%=basePath%>order/submitOrderByManager",
    contentType : "application/json;charset=utf-8",
    data : JSON.stringify(datas),
        dataType : "json",
        async : false,
        success : function(data) {
            if(data){
                alert("预约成功");
            }
        }
    });
		}
		
		function mobiles(val){
    	var mobile = val.value;
    	if(mobile!=null && mobile !=''){
    	$.ajax({
            type: "get",
            url: "<%=basePath%>getUserByMobile",
						data : {
							"mobile" : mobile
						},
						dataType : "json",
						success : function(data) {
							if (data != null) {
								$("#userName").val(data.name);
								if (data.name != '') {
									$("#userName").attr("disabled", "disabled");
								} else {
									$("#userName").removeAttr("disabled");
								}
							} else {
								$("#userName").val("");
							}
						}
					});
				}
			}
		</script>
</body>
</html>
