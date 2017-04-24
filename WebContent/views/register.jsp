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
  <h2 class="form-heading">养生会馆注册</h2>
  <div class="app-cam">
	     <label>*用户名：</label>
		<input type="text" class="text" value="Login Name" name="loginName" id="userName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'enter your Login Name';}">
		<label>*密码：</label>
		<input type="password" value="Password" name="password" id="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'enter your Password';}">
		<label>*真实姓名：</label>
        <input type="text" class="text" value="Full Name" name="userName" id="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'enter your Full Name';}">
        <label>*手机号码：</label>
        <input type="text" class="text" value="Mobile" name="Mobile" id="mobile" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'enter your Mobile';}">
		 <a class="btn btn-primary" style="width: 333px" href="javascript:save();" type="submit">注册</a>
        <ul class="new">
			<li class="new_right"><p class="sign"><a href="<%=basePath%>views/login.jsp"> 已有账户？去登录&gt;&gt;</a></p></li>
			<div class="clearfix"></div>
		</ul>
  </div>
</body>
<script src="<%=basePath%>resources/js/jquery.min.js"></script>
<script type="text/javascript">
function save() {
	console.log(132);
		var datas = {
				"userName" : $("#userName").val(),
				"mobile" : $("#mobile").val(),
				"name" : $("#name").val(),
				"password" : $("#password").val(),
				"type" : 3,
				"status" : 1
			}
		$.ajax({
	    type: "post",
	    url: "<%=basePath%>user/addUser",
	    contentType : "application/json;charset=utf-8",
	    data : JSON.stringify(datas),
			dataType : "json",
			async : false,
			success : function(data) {
				if(data){
					window.location.href="<%=basePath%>views/login.jsp";
				}
			}
		});
	}
</script>
</html>
