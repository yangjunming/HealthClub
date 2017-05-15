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
            ${sessionScope.User.name}(会员)
            <a class="btn-success btn" href="<%=basePath%>loginout">退出</a>
            </div>
            <input id="userId" value="${sessionScope.User.id}" hidden="">
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    <li>
                        <a href="<%=basePath%>views/index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>首页</a>
                        </li>
                        <li >
                            <a href="<%=basePath%>/views/customer/member-reserve.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>预约</a>
                        </li>
                        <li style="border-right:3px solid #fff;">
                            <a href="<%=basePath%>memberCard/getMemCard?id=${User.id}"><i class="fa fa-dashboard fa-fw nav_icon"></i><strong>会员卡</strong></a>
                        </li>
                        <li>
                            <a href="<%=basePath%>memberCard/getMemCardPoint?id=${User.id}"><i class="fa fa-dashboard fa-fw nav_icon"></i>积分兑换</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>/views/customer/reservation-order-list.jsp"><i class="fa fa-indent nav_icon"></i>我的订单&nbsp;&gt;&gt;</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
		</div>
		<div id="page-wrapper">
		<input id="homeId" value="${param.id}" hidden="">
         <div class="panel-body1">
         <div class="row">
         <div class="navbar-right">
          <div>
          </div>
         </div>
         <div class="bs-example4" data-example-id="contextual-table">
   <table class="table">
     <thead>
        <tr>
          <th>房间号</th>
          <th>技师</th>
          <th>是否预约</th>
          <th>状态</th>
          <th></th>
        </tr>
      </thead>
      <tbody id="orderTable">
      </tbody>
    </table>
    </div>
    </div>
       </div>
   </div>
		<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(function (){
			getOrderList();
		})
		function getOrderList(){
			var userId = $("#userId").val();
			if(userId == ""){
				alert("请先登录");
			}else{
			$.ajax({
		    type: "get",
		    url: "<%=basePath%>order/getOrderListByUserId?userId="+userId+"",
					data : {},
					dataType : "json",
					async:false,
					success : function(data) {
						console.log(data);
						$("#orderTable tr").remove();
						if(data.length>0){
							var tr = "";
							for (var i = 0; i < data.length; i++) {
								var appointment = "";
								if(data[i].appointmentId==0){
									appointment = "没有预约";
								}else{
									appointment = "预约单据"
								}
								var orderStatus =""
								if(data[i].orderStatus==0){
									orderStatus = "未开始";
								}else if(data[i].orderStatus == 1){
									orderStatus = "进行中";
								}else if(data[i].orderStatus == 2){
									orderStatus = "已结束";
								}else if(data[i].orderStatus == 3){
									orderStatus = "已废除";
								}
								tr += "<tr>";
								tr += "<td>" + data[i].roomId + "</td>";
								tr += "<td>" + data[i].technicianName + "</td>";
								tr += "<td>" + appointment + "</td>";
								tr += "<td>" + orderStatus + "</td>";
								tr += "<td><a class='remove btn btn-primary input-xs' href=${pageContext.request.contextPath}/views/customer/reservation-order.jsp?id=" + data[i].id + ">详情</a></td>";
								tr += "</tr>";
							}
							$("#orderTable").append(tr);
						}
					}
			})
			}
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
