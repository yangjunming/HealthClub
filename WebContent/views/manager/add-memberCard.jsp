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
						<div class="nav navbar-nav navbar-right"></div>
						<div class="navbar-default sidebar" role="navigation">
								<div class="sidebar-nav navbar-collapse">
										<ul class="nav" id="side-menu">
												<li><a href="index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>首页</a></li>
												<li><a href="#"><i class="fa fa-laptop nav_icon"></i>监控<span class="fa arrow"></span></a>
														<ul class="nav nav-second-level">
																<li><a href="<%=basePath%>homebase.do">房间监控</a></li>
														</ul></li>
												<li><a href="#"><i class="fa fa-indent nav_icon"></i>管理<span class="fa arrow"></span></a>
														<ul class="nav nav-second-level">
																<li><a href="<%=basePath%>memberCard/list.do">会员卡管理</a></li>
																<li><a href="typography.html">技师安排</a></li>
																<li><a href="typography.html">人员管理</a></li>
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
				<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-3">
								<h5>新增会员卡</h5>
						</div>
				</div>
				<form action="<%=basePath%>memberCard/addMemberCard.do" method="get" accept-charset="utf-8">
						<div class="form-group">
								<div class="row">
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
								<div class="row" hidden="" id="cardNumRow">
										<div class="col-md-4"></div>
										<div class="col-md-4 form-group has-error has-feedback">
												<label class="control-label" for="inputError2">卡号不对</label>
										</div>
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
								<div class="row" hidden="" id="pointRow">
										<div class="col-md-4"></div>
										<div class="col-md-4 form-group has-error has-feedback">
												<label class="control-label" for="inputError2">消费积分比不对</label>
										</div>
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
												<label>用户电话:</label> <input type="text" class="form-control1" name="mobile" value="" onblur="mobiles(this)">
										</div>
										<div class="clearfix"></div>
								</div>
								<div class="row" hidden="" id="mobileRow">
										<div class="col-md-4"></div>
										<div class="col-md-4 form-group has-error has-feedback">
												<label class="control-label" for="inputError2">电话号码不正确</label>
										</div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>用户姓名:</label> <input type="text" class="form-control1" name="userName" id="userName" value=""
														onblur="userNamess(this)">
														<input type="text" class="form-control1" name="name" id="name" value="" hidden="">
										</div>
										<div class="clearfix"></div>
								</div>
								<div class="row" hidden="" id="userNameRow">
										<div class="col-md-4"></div>
										<div class="col-md-4 form-group has-error has-feedback">
												<label class="control-label" for="inputError2">用户姓名不正确</label>
										</div>
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
    var re = /^[0-9]+(.[0-9]{1,2})?$/;
    var rr = /^[1-9]d{4,10}$/;
//     var cardNum = $("#cardNum").val();
//     var price = $("#price").val();
//     var point = $("#point").val();
//     var discount = $("#discount").val();
    function cardNums(val){
//     	if(!(rr.test(val.value))){
//     		$("#cardNumRow").show();
//     		$("#memberButton").attr("disabled","disabled");
//     	}else{
//     		console.log($("#priceRow"));
//     		$("#cardNumRow").hide();
//     	}
    }
    function prices(val){
    	if(!(re.test(val.value))){
    		$("#priceRow").show();
    	}else{
    		$("#priceRow").hide();
    	}
    }
    function points(val){
    	if(!(re.test(val.value))){
    		$("#pointRow").show();
    	}else{
    		$("#pointRow").hide();
    	}
    }
    function discounts(val){
    	if(!(re.test(val.value))){
    		$("#discountRow").show();
    	}else{
    		$("#discountRow").hide();
    	}
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
							$("#userName").val(data);
							$("#name").val(data);
							if (data != '') {
								$("#userName").attr("disabled", "disabled");
							} else {
								$("#userName").removeAttr("disabled");
							}
						}
					});
				}
			}
			function userNamess(val) {
				var userName = val.value;
				$("#name").val(userName);
				if (userName == null || userName == '') {
					$("#userNameRow").show();
				} else {
					$("#userNameRow").hide();
				}
			}
		</script>
</body>
</html>
