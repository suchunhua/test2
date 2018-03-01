<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>首度生物科技（苏州）有限公司 | 基因检测-肿瘤基因-癌症检测-靶向药物</title>
    <link rel="shortcut icon"  href="${ctx}/static/img/16.png">
    <link rel="stylesheet" href="${ctx}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/static/css/base.css">
    <link rel="stylesheet" href="${ctx}/static/css/max.css">
    <link rel="stylesheet" href="${ctx}/static/css/middle.css">
    <link rel="stylesheet" href="${ctx}/static/css/min.css"> 
<link rel="stylesheet" type="text/css" href="${ctx}/static/css/news.css"> 
    <script src="${ctx}/static/plugin/jquery/3.1.0/jquery.min.js"></script>
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
</head>

<body>
<%@ include file="common/top.jsp" %> 
    
<div id="fullpage" class="container top">
    <div class="section">
        <h1 class="blod">NEWS CENTER</h1>
        <h3 class="regular">资讯中心</h3>
        <ul class="news-nav blod">
            <li class="<c:if test="${ '0' eq param.type }"> active </c:if>" index="1">
               <a href="${ctx }/news/index?type=0">首度新闻</a> 
            </li>
            <li class="<c:if test="${ '1' eq param.type }"> active </c:if>" index="2">
                <a href="${ctx }/news/index?type=1">行业动态</a>
            </li>
        </ul>
        <div class="news-container-1 visited">
            <div class="list-group">
            	<c:forEach items="${pageInfo.list }" var="news">
            		<div class="block-news row" data-href="${ctx }/news/detail?id=${news.id}">
                        <div class="col-md-4 col-sm-4">
                            <img  src="${news.thumbnail }">
                        </div>
                        <div class="col-md-8 col-sm-8">
                            <h4 class="title-news">${news.title }</h4> 
                            <div class="time-news"><fmt:formatDate value="${news.createtime }" pattern="yyyy-MM-dd"/></div>
                            <div class="summary-news">${news.content }</div>
                            <div><a href="${ctx }/news/detail?id=${news.id}">more+</a></div>
                        </div>
                    </div>
            	</c:forEach>
            </div>
        </div>
        <nav class="pagin">
            <ul class="pagination">
            	<c:choose>
            		<c:when test="${pageInfo.pageNum == 1 }">
            			<li class="disabled"><a href="javascript:void(0)">&laquo;</a></li>
            		</c:when>
            		<c:otherwise>
            			<li>
		                    <a href="
		                    <c:if test="${param.type eq '0' }">
		                    	${ctx }/news/index?type=0&pageNum=${pageInfo.pageNum -1 }
		                    </c:if>
		                  	<c:if test="${param.type eq '1' }">
		                    	${ctx }/news/index?type=1&pageNum=${pageInfo.pageNum -1 }
		                    </c:if> ">&laquo;</a>
		                </li>
            		</c:otherwise>
            	</c:choose>
                <c:forEach var="i" items="${pageInfo.navigatepageNums }">
                <li class="<c:if test="${pageInfo.pageNum == i }">active</c:if>">
                	<c:choose>
                		<c:when test="${pageInfo.pageNum != i }">
                			<a href="
		                    <c:if test="${param.type eq '0' }">
		                    	${ctx }/news/index?type=0&pageNum=${i }
		                    </c:if>
		                  	<c:if test="${param.type eq '1' }">
		                    	${ctx }/news/index?type=1&pageNum=${i }
		                    </c:if>">${i }</a>
                		</c:when>
                		<c:otherwise>
                			<a href="javascript:void(0)">${i }</a>
                		</c:otherwise>
                	</c:choose>
                </li>
                </c:forEach>
                <c:choose>
                	<c:when test="${pageInfo.isLastPage eq true }">
                		<li class="disabled"><a href="javascript:void(0)">&raquo;</a></li>
                	</c:when>
                	<c:otherwise>
                		<li>
		                    <a href="
		                    <c:if test="${param.type eq '0' }">
		                    	${ctx }/news/index?type=0&pageNum=${pageInfo.pageNum+1 }
		                    </c:if>
		                  	<c:if test="${param.type eq '1' }">
		                    	${ctx }/news/index?type=1&pageNum=${pageInfo.pageNum+1 }
		                    </c:if>">&raquo;</a>
		                </li>
                	</c:otherwise>
                </c:choose>
            </ul>
        </nav>
    </div>
</div>

<%@ include file="common/bottom.jsp" %>
<script src="${ctx}/static/vendors/jQuery.dotdotdot/src/jquery.dotdotdot.min.js"></script>
<script>
$(function() {
    var dot = $('.summary-news');
    console.log(dot)
    var height,parent;
    // for(var i=0;i<dot.length;i++){
    //     parent = dot[i].parent('div');

    // }
    // $('.summary-news').each(function(elem){
    //     console.log(elem);
    // })
    height = $('.summary-news').parent('div').prev().find('img').innerHeight();

    // height = parent.prev();
    console.log(height)

    // $('.summary-news').dotdotdot({
    //     // height:height
    // });
    $('.block-news').find('div').click(function(e){
        var href = $(e.target).parents('.block-news').attr('data-href');
        window.location.href =  window.location.origin+href;
    });
    (function() {

        function handleResult(data) {
            if (data.errno == 0) {
                var pageData = data.data;
                var newsStr = "";
                for (var i = 0; i < pageData.data.length; i++) {
                    var newsData = pageData.data[i];
                    newsStr += ' <div class="block-news">' +
                        '<img src="${ctx}/static/img/01.png">' +
                        '<div>' +
                        '<div class="title-news">' + newsData.title + '</div>' +
                        '<div class="time-news">' + newsData.createtime + '</div>' +
                        '<div class="summary-news">' + newsData.summary + '</div>' +
                        +'</div>' + '<div><a>more+</a></div>' + '</div></div>';
                }
                console.log(newsStr);
                $('.visited .list-group').html(newsStr);

                var navStr = '';

                for (var j = 0; j < pageData.totalPages; j++) {
                    var index = j + 1;
                    if (pageData.currentPage == index) {
                        navStr += '<li class="active"><a href="#">' + index + '</a></li>';
                    } else
                        navStr += '<li><a href="#">' + index + '</a></li>';
                }
                console.log(navStr);
                $('.visited nav .pagination').html(navStr);
            }
        }
        var initParam = {
            type: 0,
            page: 1,
            pagesize: 10
        };
        $.ajax({
            method: "GET",
            url: 'home/news/get_news',
            data: initParam,
            success: function(result) {
                console.log(result);
                // handleResult(result);
            }
        });
        
    })();

});
</script>
</body>
</html>
