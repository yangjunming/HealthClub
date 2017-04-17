<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="<%=basePath%>css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<%=basePath%>css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="<%=basePath%>css/lines.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="<%=basePath%>js/jquery.min.js"></script>
<!----webfonts--->
<!-- <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'> -->
<!---//webfonts--->  
<!-- Nav CSS -->
<link href="<%=basePath%>css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<script src="<%=basePath%>js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="<%=basePath%>js/d3.v3.js"></script>
<script src="<%=basePath%>js/rickshaw.js"></script>
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <a class="navbar-brand">欢迎光临</a>
            </div>
            <div class="nav navbar-nav navbar-right">
            <form action="<%=basePath%>login.do">
            <button class="btn-success btn" type="submit">登录</button>
            </form>
            </div>
        </nav>
     	<div class="col_3">
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-thumbs-up icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>45%</strong></h5>
                      <span>New Orders</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-users user1 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>1019</strong></h5>
                      <span>New Visitors</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget widget1">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-comment user2 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>1012</strong></h5>
                      <span>New Users</span>
                    </div>
                </div>
        	</div>
        	<div class="col-md-3 widget">
        		<div class="r3_counter_box">
                    <i class="pull-left fa fa-dollar dollar1 icon-rounded"></i>
                    <div class="stats">
                      <h5><strong>$450</strong></h5>
                      <span>Profit Today</span>
                    </div>
                </div>
        	 </div>
        	<div class="clearfix"> </div>
      </div>
      <div class="col_1">
		    <div class="col-md-4 span_7">	
		    </div>
		    <div class="col-md-4 span_8">
		       <div class="activity_box">
		        <div class="scrollbar" id="style-2">
                   <div class="activity-row">
	                 <div class="col-xs-1"><i class="fa fa-thumbs-up text-info icon_13"> </i>  </div>
	                 <div class="col-xs-3 activity-img"><img src='<%=basePath%>images/5.png' class="img-responsive" alt=""/></div>
	                 <div class="col-xs-8 activity-desc">
	                 	<h5><a href="#">Lorem Ipsum</a> liked <a href="#">random</a></h5>
	                    <p>Lorem Ipsum is simply dummy</p>
	                    <h6>8:03</h6>
	                 </div>
	                 <div class="clearfix"> </div>
                    </div>
	  			    <div class="activity-row">
	                 <div class="col-xs-1"><i class="fa fa-comment text-info"></i> </div>
	                 <div class="col-xs-3 activity-img"><img src='<%=basePath%>images/3.png' class="img-responsive" alt=""/></div>
	                 <div class="col-xs-8 activity-desc">
	                 	<h5><a href="#">simply random</a> liked <a href="#">passages</a></h5>
	                    <p>Lorem Ipsum is simply dummy</p>
	                    <h6>8:03</h6>
	                 </div>
	                 <div class="clearfix"> </div>
                    </div>
                    <div class="activity-row">
	                 <div class="col-xs-1"><i class="fa fa-check text-info icon_11"></i></div>
	                 <div class="col-xs-3 activity-img"><img src='<%=basePath%>images/1.png' class="img-responsive" alt=""/></div>
	                 <div class="col-xs-8 activity-desc">
	                 	<h5><a href="#">standard chunk</a> liked <a href="#">model</a></h5>
	                    <p>Lorem Ipsum is simply dummy</p>
	                    <h6>8:03</h6>
	                 </div>
	                 <div class="clearfix"> </div>
                    </div>
                    <div class="activity-row1">
	                 <div class="col-xs-1"><i class="fa fa-user text-info icon_12"></i></div>
	                 <div class="col-xs-3 activity-img"><img src='<%=basePath%>images/4.png' class="img-responsive" alt=""/></div>
	                 <div class="col-xs-8 activity-desc">
	                 	<h5><a href="#">perspiciatis</a> liked <a href="#">donating</a></h5>
	                    <p>Lorem Ipsum is simply dummy</p>
	                    <h6>8:03</h6>
	                 </div>
	                 <div class="clearfix"> </div>
                     </div>
	  		        </div>
		          </div>
		    </div>
			<div class="col-md-4 stats-info">
                <div class="panel-heading">
                    <h4 class="panel-title">Browser Stats</h4>
                </div>
                <div class="panel-body">
                    <ul class="list-unstyled">
                        <li>Google Chrome<div class="text-success pull-right">12%<i class="fa fa-level-up"></i></div></li>
                        <li>Firefox<div class="text-success pull-right">15%<i class="fa fa-level-up"></i></div></li>
                        <li>Internet Explorer<div class="text-success pull-right">18%<i class="fa fa-level-up"></i></div></li>
                        <li>Safari<div class="text-danger pull-right">17%<i class="fa fa-level-down"></i></div></li>
                        <li>Opera<div class="text-danger pull-right">10%<i class="fa fa-level-down"></i></div></li>
                        <li>Mobile &amp; tablet<div class="text-success pull-right">14%<i class="fa fa-level-up"></i></div></li>
                        <li class="last">Others<div class="text-success pull-right">5%<i class="fa fa-level-up"></i></div></li> 
                    </ul>
                </div>
            </div>
            <div class="clearfix"> </div>
	  </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    </div>
</body>
</html>
