<%@page import="java.math.BigDecimal"%>
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
	<link type="text/css" rel="stylesheet" href="<%=basePath%>resources/css/style2-2.css">
	
<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>resources/css/styles.css" rel='stylesheet' type='text/css' />
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
<link href="<%=basePath%>resources/css/select.css" rel='stylesheet' type='text/css' />
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
						${sessionScope.User.name}(会员)
								<a class="btn-success btn" href="<%=basePath%>loginout" style="padding-top:0px;">退出</a>
						</div>
						<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                    <li>
                        <a href="<%=basePath%>views/index.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>首页</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>/views/customer/member-reserve.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>预约</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>memberCard/getMemCard?id=${User.id}"><i class="fa fa-dashboard fa-fw nav_icon"></i>会员卡</a>
                        </li>
                        <li style="border-right:3px solid #fff;">
                            <a href="<%=basePath%>memberCard/getMemCardPoint?id=${User.id}"><i class="fa fa-dashboard fa-fw nav_icon"></i><strong>积分兑换&nbsp;&gt;&gt;</strong></a>
                        </li>
                        <li>
                            <a href="<%=basePath%>/views/customer/reservation-order-list.jsp"><i class="fa fa-indent nav_icon"></i>我的订单</a>
                        </li>
                    </ul>
                </div>
            </div>
            </nav>
						
<div id="page-wrapper">
		<div class="row" style="padding-top: 10px">
				<div class="col-md-5"></div>
				<div class="col-md-3">
						<h3>养生会馆积分兑换</h3>
						<p style="padding-left:30px;">账户积分：<label id="pb">${mCard.pointBalance}</label></p>
				</div>
				
		</div>
<div id="yhc_responsive" class="main"  style="padding-top:0px;">
    <div class="allProduct respl-header">
        
        <ul class="ProductList respl-items">
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images"><img src="<%=basePath%>resources/images/gift/g_1.jpg"></a>
                    <div style="padding-left:23px;padding-top:10px;">
                    <p>*小熊养生壶YSH-B18W2*</p>
                    <p style="padding-top:3px;">市场价：299</p>
                    <p style="padding-top:3px;">所需积分：
                    <input id="point" type="text" readonly="readonly" value="6390" style="width:80px;color:red;padding-left:5px"></p>
                                        <p style="padding-top:3px;">兑换数量：
						<input id="min" name="" type="button" value="-" />  
						<input id="text_box" name="" type="text" value="1" style="width:50px;padding-left:15px;" readonly="readonly" />  
						<input id="add" name="" type="button" value="+" /> </p> 
						<p style="padding-top:3px;">消耗积分：<label id="total1" style="padding-left:8px;padding-top:4px;"></label> 
						</p> 
                    </div>
                    <div style="padding-left:50px;padding-top:3px;width:160px;height:40px;">
                        <a class="btn btn-primary right" href="javascript:fn(1)" style="padding-top:1px;">兑换</a>
                    </div>
                    
                    <!-- <h1><a href="">张凝萱 （中级技师）</a></h1>
                    <dl>
                        <dd>擅长：按摩、SPA</dd>
                        <dd>优势：技术手法娴熟</dd>
                    </dl> -->
                </div>
            </li>
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/gift/g_2.jpg"></a>
                    <div style="padding-left:23px;padding-top:10px;">
                     <p>*洁帛亚麻多功能抱枕*</p>
                    <p style="padding-top:3px;">市场价：198</p>
                    <p style="padding-top:3px;">所需积分：
                    <input id="point2" type="text" readonly="readonly" value="2190" style="width:80px;color:red;padding-left:5px"></p>
                                        <p style="padding-top:3px;">兑换数量：
                        <input id="min2" name="" type="button" value="-" />  
                        <input id="text_box2" name="" type="text" value="1" style="width:50px;padding-left:15px;" readonly="readonly" />  
                        <input id="add2" name="" type="button" value="+" /> </p> 
                        <p style="padding-top:3px;">消耗积分：<label id="total2" style="padding-left:8px;padding-top:4px;"></label> 
                        </p> 
                    </div>
                    <div style="padding-left:50px;padding-top:3px;width:160px;height:40px;">
                        <a class="btn btn-primary right" href="javascript:fn(2)" style="padding-top:1px;">兑换</a>
                    </div>
                </div>
     </li>
        
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/gift/g_3.jpg"></a>
                    <div style="padding-left:23px;padding-top:10px;">
                    <p>*DELSEY 大使 PP 商务旅行*</p>
                    <p style="padding-top:3px;"style="padding-top:3px;">市场价：1999</p>
                    <p style="padding-top:3px;">所需积分：
                    <input id="point3" type="text" readonly="readonly" value="12390" style="width:80px;color:red;padding-left:5px"></p>
                                        <p style="padding-top:3px;">兑换数量：
                        <input id="min3" name="" type="button" value="-" />  
                        <input id="text_box3" name="" type="text" value="1" style="width:50px;padding-left:15px;" readonly="readonly" />  
                        <input id="add3" name="" type="button" value="+" /> </p> 
                        <p style="padding-top:3px;">消耗积分：<label id="total3" style="padding-left:8px;padding-top:4px;"></label> 
                        </p> 
                    </div>
                    <div style="padding-left:50px;padding-top:3px;width:160px;height:40px;">
                        <a class="btn btn-primary right" href="javascript:fn(3)" style="padding-top:1px;">兑换</a>
                    </div>
                </div>
     </li>
        
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/gift/g_4.jpg"></a>
                    <div style="padding-left:23px;padding-top:10px;">
                    <p>*奔腾三刀头旋转式剃须刀*</p>
                    <p style="padding-top:3px;">市场价：229</p>
                    <p style="padding-top:3px;">所需积分：
                    <input id="point4" type="text" readonly="readonly" value="4790" style="width:80px;color:red;padding-left:5px"></p>
                                        <p style="padding-top:3px;">兑换数量：
                        <input id="min4" name="" type="button" value="-" />  
                        <input id="text_box4" name="" type="text" value="1" style="width:50px;padding-left:15px;" readonly="readonly" />  
                        <input id="add4" name="" type="button" value="+" /> </p> 
                        <p style="padding-top:3px;">消耗积分：<label id="total4" style="padding-left:8px;padding-top:4px;"></label> 
                        </p> 
                    </div>
                    <div style="padding-left:50px;padding-top:3px;width:160px;height:40px;">
                        <a class="btn btn-primary right" href="javascript:fn(4)" style="padding-top:1px;">兑换</a>
                    </div>
                </div>
     </li>
        
            <li class="respl-item category-30">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/gift/g_5.jpg"></a>
                    <div style="padding-left:23px;padding-top:10px;">
                    <p>*ELLE休闲全能大容量双肩包*</p>
                    <p style="padding-top:3px;">市场价：1198</p>
                    <p style="padding-top:3px;">所需积分：
                    <input id="point5" type="text" readonly="readonly" value="6690" style="width:80px;color:red;padding-left:5px"></p>
                                        <p style="padding-top:3px;">兑换数量：
                        <input id="min5" name="" type="button" value="-" />  
                        <input id="text_box5" name="" type="text" value="1" style="width:50px;padding-left:15px;" readonly="readonly" />  
                        <input id="add5" name="" type="button" value="+" /> </p> 
                        <p style="padding-top:3px;">消耗积分：<label id="total5" style="padding-left:8px;padding-top:4px;"></label> 
                        </p> 
                    </div>
                    <div style="padding-left:50px;padding-top:3px;width:160px;height:40px;">
                        <a class="btn btn-primary right" href="javascript:fn(5)" style="padding-top:1px;">兑换</a>
                    </div>
                </div>
     </li>
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/gift/g_6.jpg"></a>
                    <div style="padding-left:23px;padding-top:10px;">
                    <p>*南方寝饰纤羽对枕*</p>
                    <p style="padding-top:3px;">市场价：146</p>
                    <p style="padding-top:3px;">所需积分：
                    <input id="point6" type="text" readonly="readonly" value="3890" style="width:80px;color:red;padding-left:5px"></p>
                                        <p style="padding-top:3px;">兑换数量：
                        <input id="min6" name="" type="button" value="-" />  
                        <input id="text_box6" name="" type="text" value="1" style="width:50px;padding-left:15px;" readonly="readonly" />  
                        <input id="add6" name="" type="button" value="+" /> </p> 
                        <p style="padding-top:3px;">消耗积分：<label id="total6" style="padding-left:8px;padding-top:4px;"></label> 
                        </p> 
                    </div>
                    <div style="padding-left:50px;padding-top:3px;width:160px;height:40px;">
                        <a class="btn btn-primary right" href="javascript:fn(6)" style="padding-top:1px;">兑换</a>
                    </div>
                </div>
     </li>
        
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/gift/g_7.jpg"></a>
                    <div style="padding-left:23px;padding-top:10px;">
                    <p>*格来德电水壶 D815*</p>
                    <p style="padding-top:3px;">市场价：168</p>
                    <p style="padding-top:3px;">所需积分：
                    <input id="point7" type="text" readonly="readonly" value="4790" style="width:80px;color:red;padding-left:5px"></p>
                                        <p style="padding-top:3px;">兑换数量：
                        <input id="min7" name="" type="button" value="-" />  
                        <input id="text_box7" name="" type="text" value="1" style="width:50px;padding-left:15px;" readonly="readonly" />  
                        <input id="add7" name="" type="button" value="+" /> </p> 
                        <p style="padding-top:3px;">消耗积分：<label id="total7" style="padding-left:8px;padding-top:4px;"></label> 
                        </p> 
                    </div>
                    <div style="padding-left:50px;padding-top:3px;width:160px;height:40px;">
                        <a class="btn btn-primary right" href="javascript:fn(7)" style="padding-top:1px;">兑换</a>
                    </div>
                </div>
     </li>
            
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" ><img src="<%=basePath%>resources/images/gift/g_8.jpg"></a>
                    <div style="padding-left:23px;padding-top:10px;">
                    <p>*飞利浦USB排插插座*</p>
                    <p style="padding-top:3px;">市场价：90</p>
                    <p style="padding-top:3px;">所需积分：
                    <input id="point8" type="text" readonly="readonly" value="3290" style="width:80px;color:red;padding-left:5px"></p>
                                        <p style="padding-top:3px;">兑换数量：
                        <input id="min8" name="" type="button" value="-" />  
                        <input id="text_box8" name="" type="text" value="1" style="width:50px;padding-left:15px;" readonly="readonly" />  
                        <input id="add8" name="" type="button" value="+" /> </p> 
                        <p style="padding-top:3px;">消耗积分：<label id="total8" style="padding-left:8px;padding-top:4px;"></label> 
                        </p> 
                    </div>
                    <div style="padding-left:50px;padding-top:3px;width:160px;height:40px;">
                        <a class="btn btn-primary right" href="javascript:fn(8)" style="padding-top:1px;">兑换</a>
                    </div>
                                              
                </div>
            </li>
          
        </ul>
    </div>   
</div>		
		
</div>
		</div>
		
		
		
		
<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
<script src="<%=basePath%>resources/js/moment.js"></script>
<script src="<%=basePath%>resources/js/bootstrap-datetimepicker.js"></script>
<script>
function fn(num){
    var pb = document.getElementById("pb").innerText;
    console.log(pb);
    console.log(typeof(pb))
    var lab = document.getElementById("total"+num).innerText;
    console.log(lab);
    if(Number(lab) > Number(pb)){
        alert("对不起，因您的积分不足，无法兑换此商品！")
    }else{
        if(confirm("是否确定进行兑换？")){
            var id = ${mCard.id};
        	 $.ajax({
        		    type: "get",
        		    url: "<%=basePath%>memberCard/minusMemCardPoint?id="+id+"&minus=" + lab +"&balance="+pb+"",
        		    contentType : "application/json;charset=utf-8",
        		    data : {},
        		        dataType : "json",
        		        async : false,
        		        success : function(data) {
        		            console.log(data);
        		            if(data){
        		                alert("兑换成功");
        		                $("#pb").text(data);
        		            }
        		        }
        		    });
        }
    }
}	
</script>

<script>  
$(function(){  
    var t = $("#text_box");
    var p = $("#point");
    $("#add").click(function(){       
        t.val(parseInt(t.val())+1)  
        setTotal();  
    })  
    $("#min").click(function(){
    	if(parseInt(t.val()) == 1){
    		alert("不能再减少了！");
    	}else{
    		t.val(parseInt(t.val())-1)  
            setTotal();
    	}
          
    })  
    function setTotal(){  
    	var sum = parseInt(t.val()) *parseInt(p.val());
    	$("#total1").text(sum);

/*         $("#total1").html(( parseInt(t.val()) *parseInt((p.val()))).toFixed(2));  
 */    }  
    setTotal();  
    
    var t2 = $("#text_box2");
    var p2 = $("#point2");
    $("#add2").click(function(){       
        t2.val(parseInt(t2.val())+1)  
        setTotal2();  
    })  
    $("#min2").click(function(){
    	if(parseInt(t2.val()) == 1){
            alert("不能再减少了！");
        }else{
        t2.val(parseInt(t2.val())-1)  
        setTotal2();}  
    })  
    function setTotal2(){  
    	var sum = parseInt(t2.val()) *parseInt(p2.val());
        $("#total2").text(sum);
/*         $("#total2").html(parseInt((parseInt(t2.val())*parseInt((p2.val())))).toFixed(2));  
 */    }  
    setTotal2(); 
    
    var t3 = $("#text_box3");
    var p3 = $("#point3");
    $("#add3").click(function(){       
        t3.val(parseInt(t3.val())+1)  
        setTotal3();  
    })  
    $("#min3").click(function(){  
    	if(parseInt(t3.val()) == 1){
            alert("不能再减少了！");
        }else{
        t3.val(parseInt(t3.val())-1)  
        setTotal3(); } 
    })  
    function setTotal3(){ 
    	var sum = parseInt(t3.val()) *parseInt(p3.val());
        $("#total3").text(sum);
        /* $("#total3").html(parseInt((parseInt(t3.val())*parseInt((p3.val())))).toFixed(2));   */
    }  
    setTotal3(); 
    
    var t4 = $("#text_box4");
    var p4 = $("#point4");
    $("#add4").click(function(){       
        t4.val(parseInt(t4.val())+1)  
        setTotal4();  
    })  
    $("#min4").click(function(){  
    	if(parseInt(t4.val()) == 1){
            alert("不能再减少了！");
        }else{
        t4.val(parseInt(t4.val())-1)  
        setTotal4(); } 
    })  
    function setTotal4(){  
    	var sum = parseInt(t4.val()) *parseInt(p4.val());
        $("#total4").text(sum);
/*         $("#total4").html(parseInt((parseInt(t4.val())*parseInt((p4.val())))).toFixed(2));  
 */    }  
    setTotal4();
    
    var t5 = $("#text_box5");
    var p5 = $("#point5");
    $("#add5").click(function(){       
        t5.val(parseInt(t5.val())+1)  
        setTotal5();  
    })  
    $("#min5").click(function(){ 
    	if(parseInt(t5.val()) == 1){
            alert("不能再减少了！");
        }else{
        t5.val(parseInt(t5.val())-1)  
        setTotal5(); } 
    })  
    function setTotal5(){  
    	var sum = parseInt(t5.val()) *parseInt(p5.val());
        $("#total5").text(sum);
/*         $("#total5").html(parseInt((parseInt(t5.val())*parseInt((p5.val())))).toFixed(2));  
 */    }  
    setTotal5(); 
    
    var t6 = $("#text_box6");
    var p6 = $("#point6");
    $("#add6").click(function(){       
        t6.val(parseInt(t6.val())+1)  
        setTotal6();  
    })  
    $("#min6").click(function(){ 
    	if(parseInt(t6.val()) == 1){
            alert("不能再减少了！");
        }else{
        t6.val(parseInt(t6.val())-1)  
        setTotal6();}  
    })  
    function setTotal6(){
    	var sum = parseInt(t6.val()) *parseInt(p6.val());
        $("#total6").text(sum);
/*         $("#total6").html(parseInt((parseInt(t6.val())*parseInt((p6.val())))).toFixed(2));  
 */    }  
    setTotal6(); 
    
    var t7 = $("#text_box7");
    var p7 = $("#point7");
    $("#add7").click(function(){       
        t7.val(parseInt(t7.val())+1)  
        setTotal7();  
    })  
    $("#min7").click(function(){ 
    	if(parseInt(t7.val()) == 1){
            alert("不能再减少了！");
        }else{
        t7.val(parseInt(t7.val())-1)  
        setTotal7();}  
    })  
    function setTotal7(){  
    	var sum = parseInt(t7.val()) *parseInt(p7.val());
        $("#total7").text(sum);
/*         $("#total7").html(parseInt((parseInt(t7.val())*parseInt((p7.val())))).toFixed(2));  
 */    }  
    setTotal7(); 
    
    var t8 = $("#text_box8");
    var p8 = $("#point8");
    $("#add8").click(function(){       
        t8.val(parseInt(t8.val())+1)  
        setTotal8();  
    })  
    $("#min8").click(function(){ 
    	if(parseInt(t8.val()) == 1){
            alert("不能再减少了！");
        }else{
        t8.val(parseInt(t8.val())-1)  
        setTotal8(); } 
    })  
    function setTotal8(){ 
    	var sum = parseInt(t8.val()) *parseInt(p8.val());
        $("#total8").text(sum);
/*         $("#total8").html(parseInt((parseInt(t8.val())*parseInt((p8.val())))).toFixed(2));  
 */    }  
    setTotal8(); 
})  
</script> 


</body>
</html>
