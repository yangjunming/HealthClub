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
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
                                <li style="border-right:3px solid #fff;">
                                    <a href="<%=basePath%>homebase"><strong>房间监控</strong></a>
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
        <c:forEach items="${homeList}" var = "id">
        <div class="col-md-3 widget widget1" style="padding-top: 12px;padding-bottom: 15px;">
        <form action="<%=basePath%>home.do">
        <input type="text" class="text" value="${id.id}" name="homeId" hidden="" />
        		<div class="r3_counter_box" >
                    <div class="stats">
                      <h5><strong> 
            <button class="btn-success btn" type="submit">房间${id.id}</button>
            <c:if test="${id.isReservation== 1}">
            <a class="btn-success btn" href="<%=basePath%>views/home/reservation-order-list.jsp?id=${id.id}">已预约</a>
            </c:if>
            <c:if test="${id.orderId!= 0}" >
            <a class="btn-success btn" href="<%=basePath%>views/home/end-order.jsp?id=${id.id}&orderId=${id.orderId}">结单</a>
            </c:if>
            <c:if test="${id.isReservation== 0  and id.orderId == 0}" >
            <a class="btn btn-primary" href="<%=basePath%>views/home/new-order.jsp?id=${id.id}">空闲</a>
            </c:if>
            </strong></h5>
                    </div>
                </div>
                </form>
        	</div>
        </c:forEach>
<!-- 								<div class="form-actions"> -->
<!-- 										<div class="row"> -->
<!-- 												<div class="col-md-8"></div> -->
<!-- 												<div class="col-md-4"> -->
<%-- 														<a class="btn btn-primary" href="<%=basePath%>views/home/add-home.jsp">新增</a> --%>
<!-- 												</div> -->
<!-- 												</fdiv> -->
<!-- 										</div> -->
 </div>
   </div>
    <script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
</body>
</html>
