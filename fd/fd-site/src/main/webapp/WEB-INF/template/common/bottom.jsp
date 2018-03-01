<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="taglibs.jsp" %>

<div class="footer-bg">
    <div class="footer">
        <div class="footer-box">
            <p class="address">地址：江苏省苏州市工业园区生物纳米园B8栋5楼<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;安徽省合肥市高新区创新大道2800号创新产业园二期E3栋2楼</p>
            <p class="phone">苏州总部：0512-6298-7012&emsp;&emsp;合肥检验所：0551-6456-6558&emsp;&emsp;招商热线：0512-62987010-8009</p>
            <p class="qq">QQ：1976626297</p>
            <p style="color: #fff;">友情链接：<a href="http://www.dnalover.com/" style="color: #fff;" target="_blank">基因检测</a><a href="http://www.bio360.net" style="color: #fff;margin: 0px 10px;" target="_blank">生物360</a><a href="http://www.dnaspeaking.com" style="color: #fff;margin: 0px 10px;" target="_blank">序说DNASpeaking</a></p>
            <img src="${ctx}/static/img/towcode.png" alt="二维码">
        </div>
        <p class="copyright">Copyright©2016首度生物科技（苏州）有限公司 苏ICP备16044804号</p>
    </div>
</div>

<script type="text/javascript">
$(function() {
    $('.navbar-nav>.dropdown').click(function() {
        if ($(this).find('ul').length || !$(this).attr('data-name')) {
            return;

        } else {
            var pathname = $(this).attr('data-name');
            window.location.pathname = pathname;
        }
    });

    $('.navbar-nav>.dropdown .dropdown-menu>li').click(function(event) {
        $(this).parent('li').removeClass('open');
        event.stopPropagation();
    });
    $('.navbar-nav>.dropdown').mouseout(function(event) {

        if ($(this).hasClass('open')) {
            $(this).removeClass('open');
        }
    });
    $('.navbar-nav>.dropdown').mouseover(function() {
        // console.log($(this))
        $(this).addClass('open');
    });

    $('.scroll-top').click(function(e){
        $('html,body').animate({scrollTop:'0px'},1000);
    });

    var height = $('footer').height();
    $('#fullpage').css('min-height','calc( 100% - '+height+'px)')
    
});
</script>
<!-- 百度客服插件 -->
<script type="text/javascript"> var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Ff089a6a6fd6d0d0b72bd2224e6bd7cfd' type='text/javascript'%3E%3C/script%3E")) </script>