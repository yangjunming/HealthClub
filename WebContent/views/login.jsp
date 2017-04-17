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
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <!-- Bootstrap Core CSS -->
<link href="<%=basePath%>resources/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<%=basePath%>resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>resources/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="<%=basePath%>resources/js/jquery.min.js"></script>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
</head>
<body id="login">
  <div class="login-logo">
  </div>
  <h2 class="form-heading">养生会馆登录</h2>
  <div class="app-cam">
	  <form action="<%=basePath%>index">
		<input type="text" class="text" value="mobile" name="userName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mobile';}">
		<input type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
		<div class="submit"><input type="submit" onclick="myFunction()" value="登录"></div>
<!-- 		<ul class="new"> -->
<!-- 			<li class="new_left"><p><a href="#">忘记密码 ?</a></p></li> -->
<!-- 			<li class="new_right"><p class="sign"><a href="register.html"> 注册 </a></p></li> -->
<!-- 			<div class="clearfix"></div> -->
<!-- 		</ul> -->
	</form>
  </div>
</body>
<script src="<%=basePath%>resources/js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
var s = "${message}";
var flag = "${flag}"
if(flag=="false"){
	alert(s);
}
});
</script>
</html>
