var base = {
		backTop:function(scrollTo, time){
			$('body,html').animate({scrollTop:0},500);
			return false;
		},
		isShowBackTop:function(){
			var obackTop = $(".back-top");
			$(window).scrollTop() > 500 ? obackTop.show() : obackTop.hide();
		},
		pageGoBack:function(){
			history.go(-1);
		},
		switchExomeMenu:function(){
			$(".exome-menu").toggle();
		},
		//开启导航栏中的子菜单
		headerMenuSwitch:function(){
			$(".menu-ul").toggle();
		},
		searchPath:function(params){
			window.location.href=common.getRootPath()+"/"+params;
		},
		init:function(params){
			//判断是否需要显示返回顶部按钮
			base.isShowBackTop();
			$(window).scroll(function(event) {base.isShowBackTop();});
		}
}
$(function(){
	base.init({});
})