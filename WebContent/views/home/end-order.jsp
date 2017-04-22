<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
						<div class="row" style="padding-top: 40px">
								<div class="col-md-5"></div>
								<div class="col-md-3">
										<h3>养生会馆订单结算</h3>
								</div>
						</div>
						<div class="form-group" style="padding-top: 40px">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
								<input id="orderId" hidden="">
										<label>房间号：</label> <label id="homeId">${param.id}</label>
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>技师：</label> <label id="technicianName"></label>
												 <input type="text" id="technicianId" hidden="" value="">
<!-- 												 <input type="text" id="technicianName" class="form-control1" readonly="readonly" value=""> -->
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
										<input id="userId" hidden="">
												<label>客人手机号码：</label><label id="mobile"></label>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label >客人姓名：</label><label id="name" ></label>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>服务项目：</label><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="checkbox" name="chkItem"  id="spa" value="1">SPA&nbsp;&nbsp;
												<input type="checkbox" name="chkItem" id="mass" value="2">按摩&nbsp;&nbsp;
												<input type="checkbox" name="chkItem" id="cup" value="3">拔罐
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>房间收费：</label><br>
												<label style="padding-top: 15px" id="homeCharge"></label><br>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>各项目收费标准(元/小时)：</label><br>
												<label style="padding-top: 15px">SPA：</label><label style="padding-top: 15px" id="spaCharge">100</label><br>
												<label style="padding-top: 15px">按摩：</label><label style="padding-top: 15px" id="massCharge">200</label><br>
												<label style="padding-top: 15px">拔罐：</label><label style="padding-top: 15px" id="cupCharge">300</label><br>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>各项目时间(小时)：</label><br>
												<label>SPA：</label><input type="text" id="spaTime" class="form-control1" onchange="javascript:spaAmount();"  value="">
												<label>按摩：</label><input type="text" id="massTime" class="form-control1" onchange="javascript:massAmount();" value="">
												<label>拔罐：</label><input type="text" id="cupTime" class="form-control1" onchange="javascript:cupAmount();"  value="">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group" id="Member" hidden="">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
										    <label>会员信息：</label><br>
										    <input id="memCardId" hidden="" value="0">
												<label >卡号：</label><label id="cardNum"></label><br>
<!-- 												<label style="padding-top: 15px">持卡人：</label><label id="cardUserName" style="padding-top: 15px"></label><br> -->
                                                <label style="padding-top: 15px">余额：</label><label id="balance" style="padding-top: 15px"></label><br>
												<label style="padding-top: 15px">折扣：</label><label id="discount" style="padding-top: 15px"></label>
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>各项目计费：</label><br>
												<label>SPA：</label><input type="text" id="spaAmount" class="form-control1" readonly="readonly" value="0">
												<label>按摩：</label><input type="text" id="massAmount" class="form-control1" readonly="readonly" value="0">
												<label>拔罐：</label><input type="text" id="cupAmount" class="form-control1" readonly="readonly" value="0">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>合计费用：</label>
												<input type="text" id="nodiscountSalesVolume" class="form-control1" readonly="readonly" value="">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
								<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
												<label>折后合计费用：</label>
												<input type="text" id="salesVolume" class="form-control1" value="">
										</div>
										<div class="clearfix"></div>
								</div>
						</div>
						<div class="form-group">
                                <div class="row" >
                                        <div class="col-md-7"></div>
                                        <a class="btn btn-primary" href="<%=basePath%>homebase" >返回</a>
                                        <a class="btn btn-primary" href="javascript:save(0);" >现金结算</a>
                                        <a class="btn btn-primary" href="javascript:save(1);" >余额结算</a>
                                        <div class="clearfix"></div>
                                </div>
           </div>
				</div>
		</div>
		<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(function (){
			var homeId= $("#homeId").text();
			 $.ajax({
				    type: "get",
				    url: "<%=basePath%>order/getOrderByHomeId?roomId="+homeId+"",
				    contentType : "application/json;charset=utf-8",
				    data : {},
				        dataType : "json",
				        async : false,
				        success : function(data) {
				        	$("#orderId").val(data.id);
				        	$("#mobile").text(data.mobile);
				        	$("#name").text(data.name);
				        	$("#technicianName").text(data.technicianName);
				        	if(data.isSpa==1){
			                	$("#spa").attr("checked", true);
			                }
			                if(data.isMass==1){
			                	$("#mass").attr("checked", true);
			                }
			                if(data.isCup==1){
			                	$("#cup").attr("checked", true);
			                }
			                $("#spaCharge").text(data.spaCharge);
				        	$("#massCharge").text(data.massCharge);
				        	$("#cupCharge").text(data.cupCharge);
				        	$("#userId").val(data.userId);
				            if(data.type==4){
				            	var userId = data.userId;
				            	$("#Member").show();
				            	 $.ajax({
				            		    type: "post",
				            		    url: "<%=basePath%>memberCard/getMemCardByUserId?userId="+userId+"",
				            		    contentType : "application/json;charset=utf-8",
				            		    data : {},
				            		        dataType : "json",
				            		        async : false,
				            		        success : function(data) {
				            		        	console.log(data);
// 				            		        	cardNum cardUserName discount balance
                                                 $("#cardNum").text(data.cardNum);
                                                 $("#discount").text(data.discount);
                                                 $("#balance").text(data.balance);
                                                 $("#memCardId").val(data.id);


				            		        }
				            		    });
				            }
				        }
				    });
		});
		function save(flag){
				var datas = {
            "orderId" : $("#orderId").val(),
            "homeId": $("#homeId").text(),
            "userId" : $("#userId").val(),
            "memCardId" : $("#memCardId").val(),
            "nodiscountSalesVolume": $("#nodiscountSalesVolume").val(),
            "salesVolume": $("#salesVolume").val(),
            "spaAmount" : $("#spaAmount").val(),
            "massAmount" : $("#massAmount").val(),
            "cupAmount" : $("#cupAmount").val(),
             "balance":$("#balance").text(),
             "flag":flag
        }
				console.log(flag);
    $.ajax({
    type: "post",
    url: "<%=basePath%>order/endOrder",
    contentType : "application/json;charset=utf-8",
    data : JSON.stringify(datas),
        dataType : "json",
        async : false,
        success : function(data) {
        	console.log(data);
            if(data){
                alert("结算成功");
                window.location.href="<%=basePath%>homebase";
            }
        }
    });
		}
		function spaAmount(){
		var amount = $("#spaCharge").text() * $("#spaTime").val();
		if (isNaN(amount)) {
			$("#spaAmount").val(0);
		} else {
			$("#spaAmount").val(getVal(amount, 2));
		}
		var spaAmount = $("#spaAmount").val();
		var massAmount = $("#massAmount").val();
		var cupAmount = $("#cupAmount").val();
		$("#nodiscountSalesVolume").val(Number(spaAmount)+Number(massAmount)+Number(cupAmount));
		var discount = $("#discount").text();
		if(null ==discount|| discount ==''){
			$("#salesVolume").val(Number(spaAmount)+Number(massAmount)+Number(cupAmount));
		}else{
			var count = Number(spaAmount)+Number(massAmount)+Number(cupAmount);
			$("#salesVolume").val(count*Number(discount));
		}
		}
		
		function massAmount(){
			var amount = $("#massCharge").text() * $("#massTime").val();
			if (isNaN(amount)) {
				$("#massAmount").val(0);
			} else {
				$("#massAmount").val(getVal(amount, 2));
			}
			var spaAmount = $("#spaAmount").val();
			var massAmount = $("#massAmount").val();
			var cupAmount = $("#cupAmount").val();
			$("#nodiscountSalesVolume").val(Number(spaAmount)+Number(massAmount)+Number(cupAmount));
			var discount = $("#discount").text();
			if(null ==discount|| discount ==''){
				$("#salesVolume").val(Number(spaAmount)+Number(massAmount)+Number(cupAmount));
			}else{
				var count = Number(spaAmount)+Number(massAmount)+Number(cupAmount);
				$("#salesVolume").val(count*Number(discount));
			}
			}
		function cupAmount(){
			var amount = $("#cupCharge").text() * $("#cupTime").val();
			if (isNaN(amount)) {
				$("#cupAmount").val(0);
			} else {
				$("#cupAmount").val(getVal(amount, 2));
			}
			var spaAmount = $("#spaAmount").val();
			var massAmount = $("#massAmount").val();
			var cupAmount = $("#cupAmount").val();
			$("#nodiscountSalesVolume").val(Number(spaAmount)+Number(massAmount)+Number(cupAmount));
			var discount = $("#discount").text();
			if(null ==discount|| discount ==''){
				$("#salesVolume").val(Number(spaAmount)+Number(massAmount)+Number(cupAmount));
			}else{
				var count = Number(spaAmount)+Number(massAmount)+Number(cupAmount);
				$("#salesVolume").val(count*Number(discount));
			}
			}
		
		function getVal(value, num) {
			if (typeof value !== "number") {
				value = Number(value)
			}
			var val = value.toFixed(num)
			if (val.indexOf(".") !== -1) {
				for (var i = val.length - 1; i > -1; i--) {
					if (val[i] !== '0') {
						break;
					}
					val = val.slice(0, i)
				}
			}
			if (val.split("")[val.length - 1] === ".") {
				var arr = val.split("");
				arr.pop();
				val = arr.join("")
			}
			if (val == -0) {
				val = 0;
			}
			return val
		}
		</script>
</body>
</html>
