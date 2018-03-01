//弹框模块
var popup = {
		//展示一块内容并且关闭按钮在右上方
		contentRighttop:{
			show:function(){
				$(".popup-box").show();
			},
			hide:function(){
				$(".popup-box").hide();
			},
			init:function(param){
				if ($(".popup-box").length > 0) {
					$(".popup-box").toggle();
				}else{
					var oPopupBox = '<div class="popup-box"> <div class="popup-shade" onclick="popup.contentRighttop.hide();"></div> <div class="popup-content-box contentRighttop"> <div class="popup-content"></div> <div class="popup-close"><i class="icon-fd-white-close" onclick="popup.contentRighttop.hide();"></i></div> </div></div>';
					$("body").append(oPopupBox);
					$(".popup-content").append($(param));
					var trueText='<div class="true" onclick="popup.contentRighttop.hide();">确&nbsp;定</div>';
					$(".popup-content").append(trueText);
					//显示传过来的元素
					$(param).show();
					$(".popup-box").show();
				}
			}
		},
		init:function(param){
			
		}
}