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
         <div class="panel-body1">
         <div class="row">
         <div class="navbar-right">
         <div class="col_md_2">
                        类型：
         <select id="grade" >
         <option value="0">全部</option>
         <option value="1">普通会员</option>
         <option value="2">银卡会员</option>
         <option value="3">金卡会员</option>
         <option value="4">白金会员</option>
         <option value="5">至尊会员</option>
         </select>
             <input type="text" class="text" value="请输入卡号" name="query" id="cardNum" onfocus="this.value=''" onblur="if(this.value==''){this.value='请输入卡号'}" />
             <a class="btn-success btn" onclick="query()" type="submit">搜索</a>
              <a class="btn-success btn" href="<%=basePath%>memberCard/addView.do" type="submit">新增</a>
          </div>
          <div>
         
          </div>
         </div>
         <div class="bs-example4" data-example-id="contextual-table">
   <table class="table">
     <thead>
        <tr>
        <th>卡号</th>
<!--           <th>卡名</th> -->
          <th>等级</th>
          <th>价格</th>
          <th>积分(消费1元/)</th>
          <th>折扣</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${cardList}" var = "cardList" >
      <tr>
          <td>${cardList.cardNum}</td>
          <td>${cardList.cardName}</td>
          <td>${cardList.price}</td>
          <td>${cardList.point}</td>
          <td>${cardList.discount}</td>
          <td><a class='remove btn btn-primary input-xs' href="<%=basePath%>views/manager/edit-memberCard.jsp?id=${cardList.id}">编辑</a></td>
        	</tr>
        </c:forEach> 
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
var urlquery = getUrlParam('query');
if(urlquery != null && urlquery !=''){
	$("#cardNum").val(urlquery);
}
console.log(urlquery);
var urlgrade = getUrlParam('grade');
console.log(urlgrade);
if(urlgrade != null && urlgrade !=''){
	$("#grade").val(urlgrade);
}
})
function getUrlParam(name)
{
var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
var r = window.location.search.substr(1).match(reg);  //匹配目标参数
if (r!=null) return unescape(r[2]); return null; //返回参数值
} 
function query(){
	var cardNum = $("#cardNum").val();
	if(cardNum == '请输入卡号'){
		cardNum = '';
	}
	var grade = $("#grade").val();
	window.location.href="<%=basePath%>memberCard/list.do?query="+cardNum+"&grade="+grade;
}
</script>
</body>
</html>
