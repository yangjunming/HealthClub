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
            ${sessionScope.User.name}(管理员)
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
                                <li>
                                    <a href="<%=basePath%>memberCard/list">会员卡管理</a>
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
				<div class="row" style="padding-top: 40px">
						<div class="col-md-5"></div>
						<div class="col-md-3">
								<h3>预约订单查看</h3>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>预技开始时间：</label> <input id="homeId" hidden="" value="${param.id}"> <input type="text"
												class="form-control1" id="startTime" readonly="readonly" value="">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>预计结束时间：</label> <input readonly="readonly" type="text" class="form-control1" id="endTime" value="">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>技师：</label> <input id="technicianId" readonly="readonly"
												style="width: 150px; height: 30px; padding-left: 30px; font-size: 0.85em">
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
										<label>预约人：</label> <input type="text" class="form-control1" id="userName" readonly="readonly" value="">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>预约人手机号码：</label> <input type="text" class="form-control1" id="userMobile" readonly="readonly" value="">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-6"></div>
								<input id="orderId" hidden="">
								<a class="btn btn-primary" href="<%=basePath%>homebase" style="margin-left: 70px">返回</a>
								<a class="btn btn-primary" href="javascript:save(3);" style="margin-left: 70px">取消</a>
								<a class="btn btn-primary" href="javascript:save(1);" style="margin-left: 70px">开始</a>
								<div class="clearfix"></div>
						</div>
				</div>


		</div>
		</div>
		<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(function (){
			getOrder();
		})
		function getOrder(){
			var homeId = $("#homeId").val();
			$.ajax({
		    type: "get",
		    url: "<%=basePath%>order/getOrderByHomeId?roomId="+homeId+"",
					data : {},
					dataType : "json",
					async:false,
					success : function(data) {
						  $("#orderId").val(data.id);
							$("#startTime").val(initTableTime(data.startTime));
							$("#endTime").val(initTableTime(data.endTime));
							$("#technicianId").val(data.technicianId);
							$("#homeNum").val(data.roomId);
                if(data.isSpa==1){
                	$("#spa").attr("checked", true);
                }
                if(data.isMass==1){
                	$("#mass").attr("checked", true);
                }
                if(data.isCup==1){
                	$("#cup").attr("checked", true);
                }
                $("#userName").val(data.name);
                $("#userMobile").val(data.mobile);
                $("#technicianId").val(data.technicianName);
					}
				})
		}
		
		function save(val){
			var isSpa =0;
			var isMass = 0;
			var isCup = 0;
			var roomId = $("#homeId").val();
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
            "id" : $("#orderId").val(),
            "isSpa" : isSpa,
            "isMass" : isMass,
            "isCup" : isCup,
            "roomId":$("#homeId").val(),
            "orderStatus":val
        }
    $.ajax({
    type: "post",
    url: "<%=basePath%>order/updateOrder",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(datas),
					dataType : "json",
					async : false,
					success : function(data) {
						if (data) {
							if(val==1){
								alert("开始服务");
								 window.location.href="<%=basePath%>homebase";
							}else{
							alert("取消成功");
							 window.location.href="<%=basePath%>homebase";
							}
						}
					}
				});
			}
		initTableTime = function(longTime) {
	    if (longTime === null || arguments.length === 0) {
		return ""
	    }
	    if (typeof longTime !== "number") {
		var longTime = parseInt(longTime.trim())
	    }
	    var _time = new Date(longTime)
	    var year = _time.getFullYear().toString()
	    var month = (_time.getMonth() + 1).toString().length === 1 ? "0" + (_time.getMonth() + 1) : (_time.getMonth() + 1)
		    .toString()
	    var day = _time.getDate().toString().length === 1 ? "0" + _time.getDate() : _time.getDate().toString()
	    var hour = _time.getHours().toString().length === 1 ? "0" + _time.getHours() : _time.getHours().toString()
	    var minute = _time.getMinutes().toString().length === 1 ? "0" + _time.getMinutes() : _time.getMinutes().toString()
	    var second = _time.getSeconds().toString().length === 1 ? "0" + _time.getSeconds() : _time.getSeconds().toString()
	    var list = []
	    list.splice(0, 0, year, '-', month, '-', day, ' ', hour, ':', minute, ':', second)

	    return list.join('')
	}
		</script>
</body>
</html>
