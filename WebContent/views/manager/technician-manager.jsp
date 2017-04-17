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
                                <li>
                                    <a href="graphs.html">业绩查询</a>
                                </li>
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
				<div id="page-wrapper">
						<div class="panel-body1">
         <div class="row">
<!--          <div class="navbar-right"> -->
<!--          <div class="col_md_2"> -->
<!--                         类型： -->
<!--          <select id="grade" > -->
<!--          <option value="0">全部</option> -->
<!--          <option value="1">普通会员</option> -->
<!--          <option value="2">银卡会员</option> -->
<!--          <option value="3">金卡会员</option> -->
<!--          <option value="4">白金会员</option> -->
<!--          <option value="5">至尊会员</option> -->
<!--          </select> -->
<!--              <input type="text" class="text" value="请输入卡号" name="query" id="cardNum" onfocus="this.value=''" onblur="if(this.value==''){this.value='请输入卡号'}" /> -->
<!--              <a class="btn-success btn" onclick="query()" type="submit">搜索</a> -->
<!--           </div> -->
<!--           <div> -->
         
<!--           </div> -->
<!--          </div> -->
         <div class="bs-example4" data-example-id="contextual-table">
   <table class="table">
     <thead>
        <tr>
	        <th>姓名</th>
          <th>电话</th>
          <th>状态</th>
          <th>负责房间</th>
          <th>房间状态</th>
          <th></th>
        </tr>
      </thead>
      <tbody id="technicianTable">
      </tbody>
    </table>
    </div>
    </div>
				</div>
				<!-- /#page-wrapper -->
		</div>
		<!-- /#wrapper -->
		<!-- Bootstrap Core JavaScript -->
		<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript">
$(function (){
	$.ajax({
    type: "get",
    url: "<%=basePath%>user/getTechnician",
			data : {},
			dataType : "json",
			success : function(data) {
				var tr = "";
				for (var i = 0; i < data.length; i++) {
					var technicianStatus = data[i].technicianStatus;
					var status = "";
// 					1(停牌),2(下牌),3(休假),4(正常)
					if(technicianStatus=="1"){
						status = "停牌";
					}else if(technicianStatus=="2"){
						status = "下牌";
					}else if(technicianStatus=="3"){
						status = "休假";
					}else if(technicianStatus=="4"){
						status = "正常";
					}
					var homeStatus = data[i].hasUser;
					var hasuser = "";
// 					0:沒有，1:有，2已经被预约
					if(homeStatus=="0"){
						hasuser = "空闲";
					}else if(homeStatus=="1"){
						hasuser = "使用中";
					}else if(homeStatus=="2"){
						hasuser = "已预约";
					}else{
						hasuser="-";
					}
					var homeNum = data[i].homeNum;
					if(homeNum==null){
						homeNum = "没有负责的房间"
					}
					tr += "<tr>";
					tr += "<td>" + data[i].name + "</td>";
					tr += "<td>" + data[i].mobile + "</td>";
					tr += "<td>" + status + "</td>";
					tr += "<td>" + homeNum + "</td>";
					tr += "<td>" + hasuser + "</td>";
					tr += "<td><a class='remove btn btn-primary input-xs' href=${pageContext.request.contextPath}/views/manager/eidt-technician.jsp?id=" + data[i].id + ">编辑</a></td>";
					tr += "</tr>";
				}
				$("#technicianTable").append(tr);
			}
		});
	})
</script>
</html>
