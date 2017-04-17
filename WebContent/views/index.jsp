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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<!-- style -->
<link type="text/css" rel="stylesheet" href="<%=basePath%>resources/css/style2.css">


<!-- website behavior /public/ -->
<script type="text/javascript" src="<%=basePath%>resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/jquery.isotope.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/script.js"></script>

</head>
<body>
<!-- main start -->

<div id="yhc_responsive" class="main">
    <div class="allProduct respl-header">
        <ul class="productTab respl-option" data-option-key="filter">
            <li class="select"><a href="#" data-rl_value="*">全部</a></li>
            <li><a href="#" data-rl_value=".category-10">热卖</a></li>
            <li><a href="#" data-rl_value=".category-20">新品</a></li>
            <li><a href="<%=basePath%>views/login" >登录</a></li>
           
        </ul>
        
        <ul class="ProductList respl-items">
            <li class="respl-item category-10">
                <div class="unit">
                    <p class="hoverline"></p>
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/g1.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">御皇樟芝养生液</a></h1>
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
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/g3.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">御皇樟芝养生液</a></h1>
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
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/g4.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">御皇樟芝养生液</a></h1>
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
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/g1.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">御皇樟芝养生液</a></h1>
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
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/g3.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">御皇樟芝养生液</a></h1>
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
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/g4.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">御皇樟芝养生液</a></h1>
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
                    <a class="images" href="http://www.17sucai.com/"><img src="<%=basePath%>resources/images/upload/g1.jpg"></a>
                    <h1><a href="http://www.17sucai.com/">御皇樟芝养生液</a></h1>
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


</body>
</html>
    