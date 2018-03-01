var slider = {
		index:0,
		timer:"", //计时器
		BanController:function(){
			var oslides = $(".slides li:eq(" + slider.index + ")");
			var BackgroundImage = oslides.attr('data-background-image');
			oslides.css({
				'background-image' : 'url(' + BackgroundImage + ')',
				'z-index' : '2'
			}).fadeIn().siblings().css('z-index', '1').fadeOut();
			$(".flexslider ol li a").removeClass('flex-active')
			$(".flexslider ol li:eq(" + slider.index + ") a").addClass('flex-active');
		},
		autoScrollBan:function(){
			slider.BanController(slider.index);
			slider.index == ($(".slides li").length - 1) ? slider.index = 0 : slider.index++;
		},
		prevBanner:function(){
			clearInterval(slider.timer);
			slider.index == 0 ? slider.index = ($(".slides li").length - 1) : slider.index--;
			slider.BanController(slider.index);
		},
		nextBanner:function(){
			clearInterval(slider.timer);
			slider.index == ($(".slides li").length - 1) ? slider.index = 0 : slider.index++;
			slider.BanController(slider.index);
		},
		init:function(params){
			$(".flexslider ol li a").mouseenter(function(event) {
				slider.index = $(this).parent().index();
				slider.BanController(slider.index);
			});
			$(".flex-prev").click(function(event){
				slider.prevBanner();
				return false;
			});
			$(".flex-next").click(function(event){
				slider.nextBanner();
				return false;
			});
			slider.timer = setInterval("slider.autoScrollBan()", 6000);
			$(".flexslider").hover(function() {
				clearInterval(slider.timer);
			}, function() {
				slider.timer = setInterval("slider.autoScrollBan()", 6000);
			});
		}
}
$(function(){
	slider.init({});
})