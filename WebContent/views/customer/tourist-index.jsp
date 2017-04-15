<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
            <a class="btn-success btn" href="<%=basePath%>views/login.jsp">退出</a>
            </div>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="<%=basePath%>homebase"><i class="fa fa-dashboard fa-fw nav_icon"></i>预约</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="page-wrapper">
        <div class="row" style="padding-top: 40px">
          <div class="col-md-5">
          </div>
          <div class="col-md-3">
        <h3>欢迎预约养生会馆服务</h3>
        </div></div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>预约开始时间：</label>
                <input type="text" class="form-control1" readonly="readonly" id="hasUser" value="" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>预约结束时间：</label>
                <input type="text" class="form-control1" readonly="readonly" id="hasUser" value="" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>技师选择：</label>
                <input type="text" class="form-control1" readonly="readonly" id="hasUser" value="" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>服务项目：</label>
                <input type="text" class="form-control1" readonly="readonly" id="hasUser" value="" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>房间大小：</label>
                <input type="text" class="form-control1" readonly="readonly" id="hasUser" value="" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>预约人：</label>
                <input type="text" class="form-control1" readonly="readonly" id="hasUser" value="" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
        <div class="form-group">
          <div class="row">
          <div class="col-md-4">
            </div>
            <div class="col-md-4">
             <label>预约人手机号码：</label>
                <input type="text" class="form-control1" readonly="readonly" id="hasUser" value="" >
            </div>
            <div class="clearfix"> </div>
           </div>
        </div>
       </div>
   </div>
    <script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
    
</body>
</html>
