<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <a class="btn-success btn" href="<%=basePath%>views/login.jsp">退出</a>
            </div>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>首页</a>
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
                                <li>
                                    <a href="typography.html">收支登记</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>查询<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li><a href="<%=basePath%>technician/all_performance">业绩查询</a></li>
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
		</div>
		<div id="page-wrapper">
				<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-3">
								<h5>新增会员卡</h5>
						</div>
				</div>
				<form action="<%=basePath%>memberCard/addMemberCard.do" method="get" accept-charset="utf-8">
						<div class="form-group">
								<div class="row">
								<input id="memberCardId" value="${param.id}" hidden="">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>会员卡等级:</label> <select name="grade">
														<option value="1">普通会员</option>
														<option value="2">银卡会员</option>
														<option value="3">金卡会员</option>
														<option value="4">白金会员</option>
														<option value="5">至尊会员</option>
												</select>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>卡号:</label> <input type="text" class="form-control1" name="cardNum" id="cardNum" value=""
														onblur="cardNums(this)">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>售价:</label> <input type="text" class="form-control1" name="price" id="price" value=""
														onblur="prices(this)">
										</div>
										<div class="clearfix"></div>
								</div>
								<div class="row" hidden="" id="priceRow">
										<div class="col-md-4"></div>
										<div class="col-md-4 form-group has-error has-feedback">
												<label class="control-label" for="inputError2">售价不对</label>
										</div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>消费积分比:</label> <input type="text" class="form-control1" name="point" id="point" value=""
														onblur="points(this)">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>折扣:</label> <input type="text" class="form-control1" name="discount" value=""
														onblur="discounts(this)">
										</div>
										<div class="clearfix"></div>
								</div>
								<div class="row" hidden="" id="discountRow">
										<div class="col-md-4"></div>
										<div class="col-md-4 form-group has-error has-feedback">
												<label class="control-label" for="inputError2">折扣不对</label>
										</div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>用户电话:</label> <input type="text" class="form-control1" name="mobile" value="">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>用户姓名:</label> <input type="text" class="form-control1" name="userName" id="userName" value="">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-8"></div>
										<div class="col-md-4">
												<input class="btn-success btn" type="submit" value="确定" id="memberButton" />
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
				</form>
		</div>
		<div class="col-md-3 widget widget1"></div>
		<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(function(){	
			var memberCardId = $("#memberCardId").val();
			$.ajax({
		    type: "get",
		    url: "<%=basePath%>memberCard/getMemCardByMemCardId?id="+memberCardId+"",
		    contentType : "application/json;charset=utf-8",
		    data : {},
		        dataType : "json",
		        async : false,
		        success : function(data) {
		        	console.log(data);
		        	   $("#balance").val(data.balance);
		        	   $("#cardNum").val(data.cardNum);
		        	   $("#discount").val(data.discount);
		        	   $("#grade").val(data.grade);
		        	   $("#point").val(data.point);
                 $("#pointBalance").val(data.pointBalance);
                            $("#name").text(data.name);
                            $("#mobile").text(data.mobile);
                            $("#memCardId").val(data.id);


		        }
		    });
		})
		</script>
</body>
</html>
