var user = {
		quit:function(){
			confirm("确定注销吗？") ? window.location.href = base.getRootPath()+"/user/logOff" : "";
		},
		init:function(params){
		}
}
$(function(){
	user.init({});
})