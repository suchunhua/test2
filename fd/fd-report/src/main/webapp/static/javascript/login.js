var login = {
		submitForm:function(){
			$("#LoginForm").submit();
		},
		init:function(params){
			if(!base.checkIsEmpty($("#casIframe").attr('data-src'))){
				$("#casIframe").attr("src", $("#casIframe").attr('data-src')); 
				$("#casIframe").load(function() { 
					$.ajax({
		                url: base.getRootPath()+'/report/main1?urlType=main1',
		                type: "get",
		                dataType: "json",
		                error: function(XMLHttpRequest, textStatus, errorThrown) {
		                    if(Number(XMLHttpRequest.status)== 200){
		                    	window.location.href=base.getRootPath()+"/report/main1?urlType=main1";
		                    }else{
		                    	$("#casIframe").remove();
		                    }
		                }
		            });
				}); 
			}
			//用户名和密码回车提交登录
			$("input[name='userAccount'],input[name='userPassword']").keyup(function(event) {
				event.keyCode == 13 ? login.submitForm() : "";
			});
		}
}
$(function(){
	login.init({});
})