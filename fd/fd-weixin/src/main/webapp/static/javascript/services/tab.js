var tab={
	tabContent:function(param){
		$(param).addClass('active').siblings().removeClass('active');
		var index = $(".tab li").index($(param));
		$(".tab-content .section").eq(index).addClass('in').show().siblings().removeClass('in').hide();
	},
	init:function(params){

	}
}