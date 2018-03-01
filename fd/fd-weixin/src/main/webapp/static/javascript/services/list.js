var list = {
		toggleContent:function(params){
			var oFunc = $(params).find(".func");
			oFunc.hasClass('func-active') ? oFunc.removeClass('func-active') : oFunc.addClass('func-active');
			$(params).next().toggle();
		}
}