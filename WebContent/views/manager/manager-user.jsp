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
                                <li  style="border-right:3px solid #fff;">
                                    <a href="<%=basePath%>views/manager/manager-user.jsp"><strong>人员管理</strong></a>
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
         <div class="panel-body1">
         <div class="row">
         <div class="navbar-right">
         <div class="col_md_2">
                        人员类型：
         <select id="type" >
         <option value="0">全部</option>
         <option value="1">管理员</option>
         <option value="2">员工</option>
         <option value="3">游客</option>
         <option value="4">会员</option>
         </select>
             <input type="text" class="text" value="请输入手机号码" id="mobile" onfocus="this.value=''" onblur="if(this.value==''){this.value='请输入手机号码'}" />
             <a class="btn-success btn" onclick="javascript:query()" type="submit">搜索</a>
              <a class="btn-success btn" href="<%=basePath%>views/manager/add-user.jsp" type="submit">新增</a>
          </div>
          <div>
         
          </div>
         </div>
         <div class="bs-example4" data-example-id="contextual-table">
   <table class="table">
     <thead>
        <tr>
        <th>姓名</th>
          <th>手机号</th>
          <th>人员类型</th>
          <th>登录状态</th>
          <th></th>
        </tr>
      </thead>
      <tbody id="userList">
      </tbody>
    </table>
    </div>
    </div>
       </div>
   </div>
        
        <div class="col-md-3 widget widget1">
        </div>
    <script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function (){
	query();
})
function query(){
	$("#userList tr").remove();
	var type = $("#type").val();
	var mobile = $("#mobile").val();
if(mobile=="请输入手机号码"){
		mobile="";
	}
	$.ajax({
    type: "get",
    url: "<%=basePath%>user/getUserList?type="+type+"&mobile="+mobile+"",
			data : {},
			dataType : "json",
			async:false,
			success : function(data) {
				var tr = "";
				for (var i = 0; i < data.length; i++) {
					var userType = data[i].type;
					if(userType=="1"){
						userType = "管理员";
					}else if(userType=="2"){
						userType = "员工";
					}else if(userType=="3"){
						userType = "游客";
					}else if(userType=="4"){
						userType = "会员";
					}
					var status = data[i].status;
					if(status=="1"){
						status = "正常";
					}else if(status=="2"){
						status = "停用";
					}else if(status=="3"){
						status = "已删除";
					}
					tr += "<tr>";
					tr += "<td>" + data[i].name + "</td>";
					tr += "<td>" + data[i].mobile + "</td>";
					tr += "<td>" + userType + "</td>";
					tr += "<td>" + status + "</td>";
					tr += "<td><a class='remove btn btn-primary input-xs' href=${pageContext.request.contextPath}/views/manager/eidt-user.jsp?id=" + data[i].id + ">编辑</a></td>";
					tr += "</tr>";
				}
				$("#userList").append(tr);
			}
		});
	
} 
</script>
</body>
</html>
