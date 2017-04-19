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
                        <h3>会员卡信息</h3>
                </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
            <h1>会员卡号：</h1>
             <!-- <label>会员卡号：</label> -->
                <input type="text" class="form-control1" readonly="readonly"  value="${mCard.cardNum}" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>会员卡级别：</label>
                <c:if test="${mCard.grade== 1}">
                <input type="text" class="form-control1" readonly="readonly"  id="mGrade" value="普通会员" >
                </c:if> 
                 <c:if test="${mCard.grade== 2}">
                <input type="text" class="form-control1" readonly="readonly"  id="mGrade" value="银卡会员" >
                </c:if> 
                 <c:if test="${mCard.grade== 3}">
                <input type="text" class="form-control1" readonly="readonly"  id="mGrade" value="金卡会员" >
                </c:if> 
                 <c:if test="${mCard.grade== 4}">
                <input type="text" class="form-control1" readonly="readonly"  id="mGrade" value="白金会员" >
                </c:if>
                <c:if test="${mCard.grade== 5}">
                <input type="text" class="form-control1" readonly="readonly"  id="mGrade" value="至尊会员" >
                </c:if>
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>卡内余额：</label>
                <input type="text" class="form-control1" readonly="readonly" value="${mCard.balance}" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>累计积分：</label>
                <input type="text" class="form-control1" readonly="readonly" value="${mCard.point}" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>享受折扣：</label>
                <input type="text" class="form-control1" readonly="readonly" value="${mCard.discount}" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
       </div>
   </div>
    <script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
</body>
</html>
