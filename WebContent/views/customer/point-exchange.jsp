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
	<link type="text/css" rel="stylesheet" href="<%=basePath%>resources/css/style2-2.css">
	
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
								<a class="btn-success btn" href="<%=basePath%>loginout" style="padding-top:0px;">退出</a>
						</div>
						<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<%=basePath%>/views/customer/member-reserve.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>预约</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>memberCard/getMemCard?id=${User.id}"><i class="fa fa-dashboard fa-fw nav_icon"></i>会员卡</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>/views/customer/point-exchange.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>积分兑换</a>
                        </li>
                    </ul>
                </div>
            </div>
            </nav>
						
<div id="page-wrapper">
		<div class="row" style="padding-top: 40px">
				<div class="col-md-5"></div>
				<div class="col-md-3">
						<h3>欢迎光临养生会馆服务</h3>
				</div>
		</div>
	


<div id="yhc_responsive" class="main">
    <div class="allProduct respl-header">
        
        <ul class="ProductList respl-items">
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images"><img src="<%=basePath%>resources/images/upload/t_1.jpg"></a>
                    <a class="btn btn-primary right" href="<%=basePath%>views/home/new-order.jsp?id=${id.id}">兑换</a>
                    
                    <!-- <h1><a href="">张凝萱 （中级技师）</a></h1>
                    <dl>
                        <dd>擅长：按摩、SPA</dd>
                        <dd>优势：技术手法娴熟</dd>
                    </dl> -->
                </div>
            </li>
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/upload/t_2.jpg"></a>
                </div>
     </li>
        
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/upload/t_3.jpg"></a>
                </div>
     </li>
        
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/upload/t_4.jpg"></a>
                </div>
     </li>
        
            <li class="respl-item category-30">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/upload/t_5.jpg"></a>
                </div>
     </li>
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/upload/t_6.jpg"></a>
                </div>
     </li>
        
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/upload/t_7.jpg"></a>
                </div>
     </li>
            
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/upload/t_8.jpg"></a>
                                              
                </div>
            </li>
          
        </ul>
    </div>   
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
		}
		
		function save(){
			var startTime = $("#startTime").val();
			var entTime = $("#endTime").val();
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
    $.ajax({
    type: "post",
    url: "<%=basePath%>order/submitOrder",
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
		</script>
</body>
</html>
