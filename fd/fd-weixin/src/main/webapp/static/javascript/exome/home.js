var home = {
		init:function(params){
			//菜单轮播功能
			$(".main_image").touchSlider({
				flexible : true,
				speed : 200,
				btn_prev : $("#btn_prev"),
				btn_next : $("#btn_next"),
				paging : $(".flicking_con a"),
				counter : function (e){
					$(".flicking_con a").removeClass("on").eq(e.current-1).addClass("on");
				}
			});
		}
}
$(function(){
	home.init({});
})