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
<link href="<%=basePath%>resources/css/styles.css" rel='stylesheet' type='text/css' />
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
            <div class="nav navbar-nav navbar-right" style="padding-top:10px;">
            ${sessionScope.User.name}(游客)
            <a class="btn-success btn" href="<%=basePath%>views/login.jsp" style="padding-top:0px;">退出</a>
            </div>
						<div class="navbar-default sidebar" role="navigation">
								<div class="sidebar-nav navbar-collapse">
										<ul class="nav" id="side-menu">
										<li>
                                            <a href="<%=basePath%>views/index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>首页</a>
                                            </li>
												<li style="border-right:3px solid #fff;"><a href="<%=basePath%>/views/customer/tourist-index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i><strong>预约&nbsp;&gt;&gt;</strong></a></li>
										 <li>
                            <a href="<%=basePath%>/views/customer/tourist-order-list.jsp"><i class="fa fa-indent nav_icon"></i>我的订单</a>
                        </li>
										</ul>
								</div>
						</div>
				</nav>
				<div id="page-wrapper">
						<div class="row" style="padding-top: 40px">
								<div class="col-md-5"></div>
								<div class="col-md-3">
										<h3>欢迎预约养生会馆服务</h3>
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
										</select> <select id="technicianId" style="width: 150px; height: 30px; padding-left: 30px; font-size: 0.85em"
												onchange="jaavascript:technicianTime();">
										</select>
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group" id="technicianTables">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>技师被预定时间段：</label>
										<table class="table">
												<thead>
														<tr>
																<th>开始时间</th>
																<th>结束时间</th>
														</tr>
												</thead>
												<tbody id="technicianTable">
												</tbody>
										</table>
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>房间大小：</label> <select id="homeSize"
												style="width: 100px; height: 30px; padding-left: 40px; font-size: 0.85em" onchange="javascript:showHome();">
												<option value="1">大</option>
												<option value="2">中</option>
												<option value="3">小</option>
										</select> <select id="homeNum" style="width: 150px; height: 30px; padding-left: 30px; font-size: 0.85em"
												onchange="javascript:homeTime();">
										</select>
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group" id="homeTables">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>房间被预定时间段：</label>
										<table class="table">
												<thead>
														<tr>
																<th>开始时间</th>
																<th>结束时间</th>
														</tr>
												</thead>
												<tbody id="homeTable">
												</tbody>
										</table>
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>预技开始时间：</label> <input type="text" class="form-control1" id="startTime" value="">
										<!--             <input class="form-control" style="cursor: pointer; background-color: #FFF" -->
										<!-- 																						id="startTime" name="signDate" placeholder="选择签约时间" type="text"> -->
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>预计结束时间：</label> <input type="text" class="form-control1" id="endTime" value="">
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
										<label>预约人：</label> <input type="text" class="form-control1" readonly="readonly" value="${User.name}">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
										<label>预约人手机号码：</label> <input type="text" class="form-control1" readonly="readonly" value="${User.mobile}">
								</div>
								<div class="clearfix"></div>
						</div>
				</div>
				<div class="form-group">
						<div class="row">
								<div class="col-md-5"></div>
								<a class="btn btn-primary" href="javascript:save();" style="margin-left: 70px">预约</a>
								<div class="clearfix"></div>
						</div>
				</div>


		</div>

		<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
		<script src="<%=basePath%>resources/js/moment.js"></script>
		<script src="<%=basePath%>resources/js/bootstrap-datetimepicker.js"></script>

		<script type="text/javascript">
		$(function (){
			showTechnician();
			showHome();
		})
		function showTechnician(){
			var grade = $("#grade").val();
			$("#technicianId option").remove();
		//加载技师
			$.ajax({
		    type: "get",
		    url: "<%=basePath%>technician/getTechnicianByGrade?grade="+grade+"",
					data : {},
					dataType : "json",
					async:false,
					success : function(data) {
						if(data.length==0){
							$("#technicianId").append("<option value='0'>无技师可选择</option>");
						}else{
						for (var i = 0; i < data.length; i++) {
							$("#technicianId").append("<option value='"+data[i].id+"'>" + data[i].name + "</option>");
						}
						}
					}
				})
// 				var technicianId = $("#technicianId").val();
			technicianTime();
		}
		
		function technicianTime(){
			var technicianId = $("#technicianId").val();
			//加载技师被预约时间
			$.ajax({
		    type: "get",
		    url: "<%=basePath%>technician/getTechnicianHasAppointment?technicianId="+technicianId+"&roomId="+0+"",
					data : {},
					dataType : "json",
					async:false,
					success : function(data) {
						if(data.length>0){
							$("#technicianTables").show();
							$("#technicianTable tr").remove();
							var tr = "";
							for (var i = 0; i < data.length; i++) {
								tr += "<tr>";
								tr += "<td>" + data[i].startTime+ "</td>";
								tr += "<td>" + data[i].endTime + "</td>";
								tr += "</tr>";
							}
							$("#technicianTable").append(tr);
						}else{
							$("#technicianTables").hide();
						}
					}
				})
		}
		function showHome(){
			var homeSize = $("#homeSize").val();
			$("#homeNum option").remove();
		//加载技师
			$.ajax({
		    type: "get",
		    url: "<%=basePath%>home/getHomeBySize?homeSize="+homeSize+"",
					data : {},
					dataType : "json",
					async:false,
					success : function(data) {
						if(data.length==0){
							$("#homeNum").append("<option value='0'>无房间可选择</option>");
						}else{
						for (var i = 0; i < data.length; i++) {
							$("#homeNum").append("<option value='"+data[i].id+"'>" + data[i].homeNum + "</option>");
						}
						}
					}
				})
				homeTime();
		}
		
		function homeTime(){
			var roomId = $("#homeNum").val();
			//加载技师被预约时间
			$.ajax({
		    type: "get",
		    url: "<%=basePath%>technician/getTechnicianHasAppointment?technicianId="+0+"&roomId="+roomId+"",
					data : {},
					dataType : "json",
					async:false,
					success : function(data) {
						if(data.length>0){
							$("#homeTables").show();
							$("#homeTable tr").remove();
							var tr = "";
							for (var i = 0; i < data.length; i++) {
								tr += "<tr>";
								tr += "<td>" + data[i].startTime + "</td>";
								tr += "<td>" + data[i].endTime + "</td>";
								tr += "</tr>";
							}
							$("#homeTable").append(tr);
						}else{
							$("#homeTables").hide();
						}
					}
				})
		}
		
		function save(){
			var saveflag =true;
			var startTime = $("#startTime").val();
			var entTime = $("#endTime").val();
			$('#homeTable').find('tr').each(function () {
				var timeList = [];
				var eachFlag = 0;
        $(this).find('td').each(function () {
        	eachFlag =Number(eachFlag)+1;
        	timeList.push($(this).text());
        	if(eachFlag%2==0){
        		if(!checkEndTime(startTime,timeList)){
        			saveflag =false;
        		}
        		if(!checkTime(startTime,entTime,timeList)){
      				saveflag =false;
      			}
        		if(!checkEndTime(entTime,timeList)){
        			saveflag =false;
        		}
        		if(!checkTime(startTime,entTime,timeList)){
      				saveflag =false;
      			}
        	}
        }) 
			})
			
			$('#technicianTable').find('tr').each(function () {
				var timeList = [];
				var eachFlag = 0;
        $(this).find('td').each(function () {
        	eachFlag =Number(eachFlag)+1;
        	timeList.push($(this).text());
        	if(eachFlag%2==0){
        		if(!checkEndTime(startTime,timeList)){
        			saveflag =false;
        		}
        		if(!checkTime(startTime,entTime,timeList)){
      				saveflag =false;
      			}
        		if(!checkEndTime(entTime,timeList)){
        			saveflag =false;
        		}
        		if(!checkTime(startTime,entTime,timeList)){
      				saveflag =false;
      			}
        	}
        }) 
			})
			var isSpa =0;
			var isMass = 0;
			var isCup = 0;
			var userId= ${User.id};
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
            "resStarttime" : startTime,
            "resEndtime" : entTime,
            "technicianId" : $("#technicianId").val(),
            "roomId" : $("#homeNum").val(),
            "isSpa" : isSpa,
            "isMass" : isMass,
            "isCup" : isCup,
            "userId":userId
        }
				if(saveflag){
					$.ajax({
				    type: "post",
				    url: "<%=basePath%>order/submitOrder",
									contentType : "application/json;charset=utf-8",
									data : JSON.stringify(datas),
									dataType : "json",
									async : false,
									success : function(data) {
										if (data) {
											alert("预约成功");
										}
									}
								});
				} else {
					alert("所选时间已被预订");
				}

			}
			$(document).ready(function() {
				// date time picker
				if ($("#startTime").length > 0) {
					$("#startTime").datetimepicker({
						locale : "zh-cn",
						format : "YYYY-MM-DD HH:mm:ss",
						dayViewHeaderFormat : "YYYY年 MMMM"
					});
				}
				if ($("#endTime").length > 0) {
					$("#endTime").datetimepicker({
						locale : "zh-cn",
						format : "YYYY-MM-DD HH:mm:ss",
						dayViewHeaderFormat : "YYYY年 MMMM"
					});
				}
			})

			// 返回格式 2017-03-03
			//     function formatDates(time) {
			//       var data = new Date(time);  
			//       var year = data.getFullYear();  //获取年
			//       var month = data.getMonth() + 1;    //获取月
			//       if(month<10){
			//      	 month = "0"+month;
			//       }
			//       var day = data.getDate(); //获取日
			//       if(day<10){
			//      	 day = "0"+day;
			//       }
			//       var hours = data.getHours(); 
			//       var minutes = data.getMinutes();
			//       var seconds= data.getSeconds();
			//       time = year + "-" + month + "-" + day +" "+hours +":"+minutes+":"+seconds;
			//       return time;
			//    }
			function checkEndTime(time, obj) {
				var times = new Date(time.replace("-", "/").replace("-", "/"));
				var startTime = new Date(obj[0].replace("-", "/").replace("-", "/"));
				var endTime = new Date(obj[1].replace("-", "/").replace("-", "/"));
				if (times<endTime&&times>startTime) {
					return false;
				}
				return true;

			}
			
			function checkTime(time,endTimes, obj) {
				var times = new Date(time.replace("-", "/").replace("-", "/"));
				var endTimes = new Date(endTimes.replace("-", "/").replace("-", "/"));
				var startTime = new Date(obj[0].replace("-", "/").replace("-", "/"));
				var endTime = new Date(obj[1].replace("-", "/").replace("-", "/"));
				if (times<startTime&&endTimes>endTime) {
					return false;
				}
				return true;

			}
		</script>
</body>
</html>
