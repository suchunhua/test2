<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="taglibs.jsp" %>

<div class="navbar-bg">
    <div class="navbar">
        <a href="${ctx}/" class="logo"></a>
        <ul class="nav">
            <li><a href="${ctx }/">首页</a></li>
            <li><a href="${ctx }/about">关于我们</a></li>
            <li><a href="javascript:void(0);return false;">产品与服务</a>
                <ul class="sub-nav">
                    <li><a href="http://www.fulesong.com.cn/">FD-Exome</a></li>
                    <li><a href="${ctx }/fd180">FD-180系列</a></li>
                    <li><a href="${ctx }/fd600">FD-600系列</a></li>
                    <li><a href="${ctx }/production">FD-Soft-Suite</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);">资讯中心</a>
                <ul class="sub-nav">
                    <li><a href="${ctx }/news/index?type=0">首度新闻</a></li>
                    <li><a href="${ctx }/news/index?type=1">行业动态</a></li>
                </ul>
            </li>
            <li><a href="${ctx }/agent">代理加盟</a></li>
            <li><a href="javascript:void(0);">加入我们</a>
                <ul class="sub-nav">
                    <li><a href="${ctx }/contact">联系我们</a></li>
                    <li><a href="${ctx }/join">员工风采</a></li>
                    <li><a href="${ctx }/join?action=recruit">诚聘英才</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>

<header class="header">
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand navbar-brand-img hidden-xs hidden-sm" href="/"><img src="${ctx}/static/img/logo.png" alt=""></a>
                <a class="navbar-brand navbar-brand-des visible-xs-inline-block" href="/">首度基因</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav fright" id="menu" role="tablist">
                    <li class="dropdown" class="active"><a href="${ctx }/"><span>首页</span></a></li>
                    <li class="dropdown"><a href="${ctx }/about" ><span>关于我们</span></a></li>
                    <li class="dropdown">
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">
                        <span>产品服务</span><span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="${ctx }/exome">FD-Exome</a>
                            </li>
                            <li>
                                <a href="${ctx }/production">FD-Soft-Suite</a>
                            </li>
                            <li>
                                <a href="${ctx }/fd600">FD-600系列</a>
                            </li>
                            <li>
                                <a href="${ctx }/fd180">FD-180系列</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span>资讯中心</span>
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="${ctx }/news/index?type=0">首度新闻</a>
                            </li>
                            <li>
                                <a href="${ctx }/news/index?type=1">行业动态</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="${ctx }/agent">
                    <span>代理加盟</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>加入我们</span><span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="${ctx }/contact"><span>联系我们</span></a>
                            </li>
                            <li>
                                <a href="${ctx }/join">员工风采</a>
                            </li>
                            <li>
	
                                <a href="${ctx }/join?action=recruit">诚聘英才</a>
                            </li>
                        </ul>
                    </li>
                    <!-- 去掉点击报错的search<li class="dropdown hidden-xs"><a href="http://www.shoudujiyin.com/report"><img src="${ctx}/static/img/search.png" alt="" class="search-black"><img src="${ctx}/static/img/search-white.png" alt="" class="search-white"></a></li> -->
                </ul>
            </div>
        </div>
    </nav>
</header>

