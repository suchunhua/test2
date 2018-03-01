var main = {
		downloadPdf:function(collInfoid,FDautoUrl,FDautoMethod,outputFileName){
			layer.open({
			  type: 2,
			  title: '文件下载中约1分钟，请等下载完再关闭窗口',
			  shadeClose: false,
			  shade: 0.5,
			  area: ['450px', '30%'],
			  content: base.getRootPath() + "/report/downloadPdf"+"?collInfoid=" + collInfoid + "&FDautoUrl=" + FDautoUrl + "&FDautoMethod=" + FDautoMethod + "&outputFileName=" + outputFileName,
			}); 
		},
		submitForm:function(othis){
			$(othis).parents('form').submit();
		},
		init:function(params){
			//修改密码回车提交登录
			$("input[name='userPassword'],input[name='userPassword1'],input[name='userPassword2']").keyup(function(event) {
				event.keyCode == 13 ? main.submitForm(this) : "";
			});
			//弹出文库编号提示
			$(".fa-emark").click(function(event) {
				layer.alert('此编号是此次检测的唯一识别号，在预约报告解读时，请提供此编号', {
		          icon: 1,
		          shadeClose: true,
		          title: "DNA文库编号"
		        });
			});
		}
}
$(function(){
	main.init({});
})