<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
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
            <a class="btn-success btn" href="<%=basePath%>loginout">退出</a>
            </div>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li style="border-right:3px solid #fff;">
                            <a href="<%=basePath%>technician/schedule?id=${User.id}"><i class="fa fa-dashboard fa-fw nav_icon"></i><strong>技师安排</strong></a>
                        </li>
                        <li>
                            <a href="<%=basePath%>technician/salary?id=${User.id}"><i class="fa fa-dashboard fa-fw nav_icon"></i>工资查看</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>technician/performance?id=${User.id}"><i class="fa fa-dashboard fa-fw nav_icon"></i>业绩查询</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="page-wrapper">
        <div class="bs-example4" data-example-id="contextual-table">
   <table class="table">
     <thead>
        <tr>
            <th>房间号</th>
	        <th>预计开始时间</th>
	        <th>预计结束时间</th>
	        <th>服务项目</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${orders}" var = "orders" >
      <tr>
          <td>${orders.roomId}</td>
          <td><fmt:formatDate value="${orders.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
          <td><fmt:formatDate value="${orders.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
          <td>
          <c:if test="${orders.isSpa == 1}">SPA&nbsp;</c:if>  
          <c:if test="${orders.isSpa == 0 }"></c:if> 
          <c:if test="${orders.isMass == 1}">按摩&nbsp;</c:if>  
          <c:if test="${orders.isMass == 0 }"></c:if>
          <c:if test="${orders.isCup == 1}">拔罐</c:if>  
          <c:if test="${orders.isCup == 0 }"></c:if> 
          </td>
      </tr>
      </c:forEach> 
      </tbody>
    </table>
    </div>
        </div>
   </div>
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
   
</body>
</html>
