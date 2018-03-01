<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>首度生物科技（苏州）有限公司 | 基因检测-肿瘤基因-癌症检测-靶向药物</title>
    <link rel="shortcut icon"  href="${ctx}/static/img/16.png">
	<link rel="stylesheet" href="${ctx}/static/vendors/fullpage/jquery.fullpage.min.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/static/vendors/fsbanner/fsbanner.css">
	<link rel="stylesheet" href="${ctx}/static/css/index.css?rev=@@hash"> 
    <script src="${ctx}/static/plugin/jquery/3.1.0/jquery.min.js"></script>
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
</head>

<body>
<%@ include file="common/top.jsp" %>
<div class="flexslider">
    <ul class="slides">
        <li style="background-image:url(http://images.firstdimension.cn/0516-banner1.png);display:block;z-index:2;" data-background-image="http://images.firstdimension.cn/0516-banner1.png">
            <a target="_blank" href=""></a>
        </li>
        <li data-background-image="http://images.firstdimension.cn/0508-2.png">
            <a target="_blank" href="${ctx}/exome" ></a>
        </li>
        <li data-background-image="http://images.firstdimension.cn/0508-3.png">
            <a target="_blank" href="${ctx}/fd180"></a>
        </li>
        <li data-background-image="http://images.firstdimension.cn/0508-4.png">
            <a target="_blank" href="${ctx }/fd600"></a>
        </li>
        <li data-background-image="http://images.firstdimension.cn/0508-5.png">
            <a target="_blank" href="${ctx }/production"></a>
        </li>
    </ul>
    <ol class="flex-control-nav flex-control-paging">
        <li><a class="flex-active">1</a></li>
        <li><a>2</a></li>
        <li><a>3</a></li>
        <li><a>4</a></li>
        <li><a>5</a></li>
    </ol>
    <ul class="flex-direction-nav"><li><a class="flex-prev" href="#">Previous</a></li><li><a class="flex-next" href="#">Next</a></li></ul>
</div>

<div id="fullpage">
	<div class="section full-slider">
        <div class="slide banner-animate"> 
            <img class="bg hidden-sm hidden-xs" src="http://images.firstdimension.cn/background.png">
            <img class="title hidden-sm hidden-xs" src="${ctx}/static/img/title30320.png">
            <img  class="man hidden-sm hidden-xs" src="${ctx}/static/img/man0320.png">
            <img class="visibal-sm-block visibal-xs-block" src="http://images.firstdimension.cn/0516-mobile.png">
        </div>
        <div class="slide "> 
            <a href="${ctx }/exome">
                <img class="hidden-sm hidden-xs" src="http://images.firstdimension.cn/0508-b2.png"> 
                <img class="visibal-sm-block visibal-xs-block" src="http://images.firstdimension.cn/0508-b2.png">
            </a>
        </div>
        <div class="slide"> 
            <a href="${ctx }/fd180">
                <img class="hidden-sm hidden-xs" src="http://images.firstdimension.cn/0508-b3.png">
                <img class="visibal-sm-block visibal-xs-block" src="http://images.firstdimension.cn/0508-b3.png">
            </a>
        </div>
        <div class="slide"> 
            <a href="${ctx }/fd600">
                <img class="hidden-sm hidden-xs" src="http://images.firstdimension.cn/0508-b4.png">
                <img class="visibal-sm-block visibal-xs-block" src="http://images.firstdimension.cn/0508-b4.png">
            </a>
        </div>
        <div class="slide"> 
            <a href="${ctx }/production">
                <img class="hidden-sm hidden-xs" src="http://images.firstdimension.cn/0508-b5.png">
                <img class="visibal-sm-block visibal-xs-block" src="http://images.firstdimension.cn/0508-b5.png">
            </a>
        </div>
        <div class="pagination hidden-sm hidden-xs">
            <span class="index-0 active"></span>
            <span class="index-1"></span>
            <span class="index-2"></span>
            <span class="index-3"></span>
            <span class="index-4"></span>
        </div>
       
    </div>
    <div class="section" style="margin-top:60px">
        <h2 class="heavy padding-top">ABOUT US</h2>
        <h4>关于我们</h4>
        <h4 class="blod">中国基因大数据业界领导者</h4>
        <div class="row about visible-xs-block visible-sm-block">
            <div class="col-md-6 col-xs-12 about-tow">
                <img src="http://images.firstdimension.cn/0407-1.png">
                <img src="http://images.firstdimension.cn/0407-2.png">
            </div>
            <div class="col-md-6 col-xs-12 about-one hidden-xs">
                <img src="http://images.firstdimension.cn/0407-3.png">
            </div>
        </div>
        <div class="md-about hidden-xs hidden-sm container">
            <div class="right"><img src="http://images.firstdimension.cn/0407-3.png"></div>
            <div><img src="http://images.firstdimension.cn/0407-1.png"></div>
            <div><img src="http://images.firstdimension.cn/0407-2.png"></div>
        </div>

        <p class="container about-info">首度生物科技是一个数码生命与基因大数据公司，将基因测序信息，转化为人类追求健康和战胜疾病的福音，以癌症诊断为起点，首度提供的生物信息服务有助于癌症的诊断、预防、以及跟踪和改善癌症治疗的进程。</p>
        <a href="${ctx }/about">了解更多+</a>
    </div>
    <div class="section">
        <h2 class="heavy padding-top">PRODUCT SERVICE</h2>
        <h4>产品服务</h4>
        <div class="fsbanner hidden-xs hidden-sm">
            <div data-href="${ctx }/fd180" style = "background-image: url(http://images.firstdimension.cn/_180.png);">
                <span class="name">FD-180</span>
            </div>
            <div data-href="${ctx }/fd600" style = "background-image: url(http://images.firstdimension.cn/_600.png);">
                <span class="name">FD-600</span>
            </div>
            <div data-href="${ctx }/exome" style = "background-image: url(http://images.firstdimension.cn/_EXOME.png);">
                <span class="name">FD-Exome</span>
            </div>
            <div data-href="${ctx }/production" style = "background-image: url(http://images.firstdimension.cn/_SOFT.png);">
                <span class="name">FDSoft-Suite</span>
            </div>
        </div>
        <div class="row tec ">
            <div class="col-md-4">
                <img src="${ctx}/static/img/support.png">
                <br><span>技术支持</span>
            </div>
            <div class="col-md-4">
                <img src="${ctx}/static/img/cloud.png">
                <br><span>中国癌症云平台</span>
            </div>
            <div class="col-md-4">
                <a href="http://report.shoudujiyin.com">
                    <img src="${ctx}/static/img/report.png">
                    <br><span>报告检查</span>
                </a>
            </div>
        </div>
    </div>
    <div class="section">
        <h2 class="heavy padding-top">NEWS CENTER</h2>
        <h4>资讯中心</h4>
        <div class="row information hidden-xs hidden-sm">
            <div class="col-md-1"></div>
            <div class="col-md-4 left">
                <div class="row">
                    <div class="col-md-5">
                        <div class="block1">
                            <div>
                                <a href="${ctx}/news/index?type=0">首度新闻</a>
                            </div>
                        </div>
                        <div class="block2">
                            <div>
                                <a href="${ctx}/news/detail?id=${newsCenter.news[0].id}">${newsCenter.news[0].title}</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="block3">

                            <a class="img" href="${ctx}/news/detail?id=${newsCenter.news[1].id}">
                                <img src="${newsCenter.news[1].thumbnail}">
                            </a>
                        </div>
                        <div class="block4">
                            <div>
                                <a href="${ctx}/news/detail?id=${newsCenter.news[2].id}"> ${newsCenter.news[0].title}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 right">
                <div class="row">
                    <div class="block5">
                        <div>
                            <a href="${ctx}/news/detail?id=${newsCenter.status[0].id}">${newsCenter.status[0].title}</a>
                        </div>
                    </div>
                    <div class="block6">
                        <div>
                            <a href="${ctx}/news/index?type=1">行业动态</a>        
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="block7">
                        <div>
                            <a class="img" href="${ctx}/news/detail?id=${newsCenter.status[1].id}">
                                <img src="${newsCenter.status[1].thumbnail}">
                            </a>
                        </div>
                    </div>
                    <div class="block8">
                        <div>
                            <a href="${ctx}/news/detail?id=${newsCenter.status[2].id}">${newsCenter.status[2].title}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="list-group information visible-xs-block visible-sm-block">
          <a href="${ctx}/news/detail?id=29" class="list-group-item">首度基因荣获2016金鸡湖创业长廊年度优秀云彩项目奖</a>
          <a href="${ctx}/news/detail?id=25" class="list-group-item">“投身公益、履行责任”，首度基因赢得BioBAY年度最佳责任奖</a>
          <a href="${ctx}/news/detail?id=24" class="list-group-item">旭衍资本董事长黄江南一行莅临首度基因指导工作首度生物科技</a>
          <a href="${ctx}/news/detail?id=28" class="list-group-item">未来5年，中国基因检测市场将达到百亿级</a>
          <a href="${ctx}/news/detail?id=27" class="list-group-item">燃石COMPASS液体活检监测项目亮相2016肺癌精准医学峰会</a>
          <a href="${ctx}/news/detail?id=3" class="list-group-item">精准医疗</a>
        </div>
    </div>
    <div class="section">
        <h2 class="heavy">STRATEGIC LAYOUT</h2>
        <h4>战略布局</h4>
        <div class="container chart"></div>
    </div>
</div>
<%@ include file="common/bottom.jsp" %>
<script src="${ctx}/static/vendors/fullpage/jquery.fullpage.min.js"></script>
<script src="${ctx}/static/vendors/echarts/echarts.min.js"></script>
<script src="${ctx}/static/vendors/echarts/map/js/china.js"></script>
<script src="${ctx}/static/vendors/fsbanner/fsbanner.js"></script>
<script src="${ctx}/static/js/swiper.min.js"></script>
<script src="${ctx }/static/javascript/powerful/slider.js"></script>
<script src="${ctx}/static/javascript/index.js"></script>
</body>
</html>
