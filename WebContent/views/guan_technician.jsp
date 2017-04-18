<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="<%=basePath%>resources/page/HP/css/public.css">
    <link rel="stylesheet" href="<%=basePath%>resources/page/HP/css/css.css">
    <link rel="stylesheet" href="<%=basePath%>resources/page/css/swiper.min.css">
    <script src="<%=basePath%>resources/page/js/jquery.min.js"></script>
    <script src="<%=basePath%>resources/page/js/swiper.min.js"></script>
    <title>养生会馆|最好的美容,spa,按摩,观影足疗养生馆</title>
    <meta name="description" content="养生会馆是以互联网思维为基础的养生会所，结合了台湾精品酒店的主题式装修风格，并将精油SPA、红酒及音乐融为一体。完全颠覆了以往的养生行业经营模式，全部运用互联网营销，线上预约，不推销，不卖产品。让客人能在一个全无压力的环境下，享受前所未有的放松体验。"/>
    <meta name="keywords" content="养生会馆|天津最好的美容馆,天津最好的spa,天津按摩,天津观影足疗,养生馆"/>

    <!-- style -->
	<link type="text/css" rel="stylesheet" href="<%=basePath%>resources/css/style2.css">
	<!-- website behavior /public/ -->
	<script type="text/javascript" src="<%=basePath%>resources/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>resources/js/jquery.isotope.js"></script>
	<script type="text/javascript" src="<%=basePath%>resources/js/script.js"></script>
	    
</head>
<body>
<header>
    <div class="header banner3">
        <div class="box">
            <div class="logo fl"><span style=""></span></div>
            <div class="nav-tog">
                <span></span>
                <span></span>
                <span></span>
            </div>
            <ul class="nav fr navmobile">
                <li><a href="<%=basePath%>views/guan.jsp">会馆世界</a></li>
                <li class="on"><a href="<%=basePath%>views/guan_technician.jsp" title="">技师风采</a></li>
                <li><a href="<%=basePath%>views/login.jsp" title="">预约</a></li>
            </ul>
        </div>
    </div>
</header>
<!-- main start -->

<div id="yhc_responsive" class="main">
    <div class="allProduct respl-header">
        <ul class="productTab respl-option" data-option-key="filter">
            <li class="select"><a href="#" data-rl_value="*" style="line-height: 25px;">全部</a></li>
            <li><a href="#" data-rl_value=".category-10"  style="line-height: 25px;">高级技师</a></li>
            <li><a href="#" data-rl_value=".category-20"  style="line-height: 25px;">中级技师</a></li>
            <li><a href="#" data-rl_value=".category-30"  style="line-height: 25px;">基础技师</a></li>           
        </ul>
        
        <ul class="ProductList respl-items">
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_1.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">张凝萱 （中级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">预约<span>&gt;</span></a>
                    </div>
                </div>
            </li>
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_2.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">王碧琪 （高级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>
                </div>
            </li>
        
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_3.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">王煦妍 （高级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>
                </div>
            </li>
        
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_4.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">李彦琳 （中级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>
                </div>
            </li>
        
            <li class="respl-item category-30">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_5.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">杨然 （基础技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_6.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">彭蕙怡 （高级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>
                </div>
            </li>
        
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_7.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">胡欣妍 （高级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_8.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">龚琳 （中级技师）（</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_9.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">刘雅雯 （高级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_10.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">王可馨 （高级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-30">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_11.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">张惠茜 （基础技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-30">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_12.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">张漫妮 （基础技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_13.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">李梦洁 （高级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-30">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_14.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">孙依娜 （基础技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-20">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_15.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">钱雅芙 （中级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
            
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/t_16.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">赵静 （高级技师）</a></h1>
                    <dl>
                        <dd>产品成分：100%野生牛樟芝浓缩</dd>
                        <dd>产品功效：强免疫、活细胞、解..</dd>
                        <dd>包装规格：300ML</dd>
                    </dl>
                    <div class="view">
                        <div class="left">39 浏览</div>
                        <a class="right" href="http://www.17sucai.com/">查看<span>&gt;</span></a>
                    </div>                            
                </div>
            </li>
        </ul>
    </div>   
</div>

<!-- main end -->

<!-- load more -->
<div class="loadMore">
    <a href="javascript:;">更多</a>
</div>


<footer>
    <div class="adress">
        <div class="box">
            <ul>
                <li><h4>地址</h4><p>天津市康庄大道康庄大厦<br/>A座666室</p></li>
                <li><h4>营业时间</h4><p>12:00AM～24:00PM</p></li>
                <li><h4>电话</h4><p>Tel：400-123-4567<br/>Email：support@admin.com</p></li>
            </ul>
        </div>
    </div>
    
</footer>
<script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true
    });
</script>
<script src="<%=basePath%>resources/page/HP/js/common.js"></script>
</body>
</html>