//个人中心模块
var customer = {
		//修改客户信息模块
		editCustomer:{
			saveCustomer:function(){
				var params = "{'"+$(".changes").attr('name')+"':'"+$(".changes").val()+"'}";
				$.ajax({
					url: common.getRootPath() + "/customer/saveCustomer",
					data:eval('('+params+')'),
					type:"post",
					cache:false,
					async:false,
					dataType:'json',
					success:function(data){
						if(data.flag){
							window.location.href = common.getRootPath()+"/customer/security?urlactive=myOffice";
						}else{
							alert(data.error);
						}
					},
					error:function(){
						alert("网络异常");
					}
				});
			}
		},
		//基本信息模块
		baseInfo:{
			editCollInfo:function(param){
				var othis = $(param);
				othis.parent().append("<input onblur='customer.baseInfo.saveCollInfo(this);'/>");
				othis.hide();
			},
			saveCollInfo:function(param){
				var othis = $(param);
				if(common.checkIsEmpty(othis.val())){
					othis.prev('span').show();
				}else{
					var params = "{'"+othis.prev('span').attr('name')+"':'"+othis.val()+"'}";
					$.ajax({
						url: common.getRootPath() + "/customer/editBaseInfo",
						data:eval('('+params+')'),
						type:"post",
						cache:false,
						async:false,
						dataType:'json',
						success:function(data){
							if(data.flag){
								othis.prev('span').html(othis.val()).show();
							}else{
								alert(data.error);
							}
						},
						error:function(){
							alert("网络异常");
						}
					});
				}
				othis.remove();
			}
		},
		//预约模块
		reservation:{
			deleteReservation:function(){
				$.ajax({
					url: common.getRootPath() + "/reservation/delete",
					type:"post",
					cache:false,
					async:false,
					success:function(data){
						if(data.flag){
							setInterval(window.location.href = common.getRootPath() + "/customer/reportProgress?urlactive=myOffice",2000);
							alert("删除成功");
						}else{
							alert(data.msg);
						}
					},
					error:function(){
						alert("网络异常");
					}
				});
			},
			//提交预约表单
			submitReservation:function(){
				var bookcode = $("input[name='bookcode']").val();
				var name = $("input[name='name']").val();
				var tele = $("input[name='tele']").val();
				var date = $("input[name='date']").val();
				var reservaTime = $("select[name='reservaTime']").val();
				var reservaRemarks = $("textarea[name='reservaRemarks']").val();
				var mode = $("select[name='mode']").val();
				var number = $("input[name='number']").val();
				var relationship = $("input[name='relationship']").val();
				var qq = $("input[name='qq']").val();
				if(common.checkIsEmpty(bookcode)){
					$(".error-msg").show().html("报告编号不能为空");
					return false;
				}
				if(common.checkIsEmpty(name)){
					$(".error-msg").show().html("联系人不能为空");
					return false;
				}
				if(common.checkIsEmpty(tele) || !common.checkIsTeleOrMobile(tele)){
					$(".error-msg").show().html("联系电话不能为空或者格式错误");
					return false;
				}
				if(common.checkIsEmpty(date)){
					$(".error-msg").show().html("预约日期不能为空");
					return false;
				}
				if(common.checkIsEmpty(reservaTime)){
					$(".error-msg").show().html("预约时间不能为空");
					return false;
				}
				if(common.checkIsEmpty(mode)){
					$(".error-msg").show().html("解读方式不能为空");
					return false;
				}
				if(!common.checkIsEmpty(number)){
					if(!isNaN(number)){
						if(common.checkIsEmpty(relationship)){
							$(".error-msg").show().html("请填写解读人关系");
							return false;
						}
						if(common.checkIsEmpty(reservaRemarks)){
							$(".error-msg").show().html("请填写同时解读对应人的姓名");
							return false;
						}
					}else{
						$(".error-msg").show().html("解读人数必须是数字");
						return false;
					}
				}
				$.ajax({
					url: common.getRootPath() + "/reservation/save",
					data:{"name":name,"tele":tele,"dateTime":date,"time":reservaTime,"remark":reservaRemarks,"bookcode":bookcode,"mode":mode,"number":number,"relationship":relationship,"qq":qq},
					type:"post",
					cache:false,
					async:false,
					dataType:'json',
					success:function(data){
						if(data.flag){
							setInterval(window.location.href = common.getRootPath() + "/customer/reportProgress?urlactive=myOffice",2000);
							alert("预约成功,请耐心等待工作人员为您解读");
						}else{
							$(".error-msg").show().html(data.msg);
						}
					},
					error:function(){
						$(".error-msg").show().html("网络异常");
					}
				});
			},
			init:function(){
				var calendar = new datePicker();
				calendar.init({
					'trigger': '#date', /*按钮选择器，用于触发弹出插件*/
					'type': 'date',/*模式：date日期；datetime日期时间；time时间；ym年月；*/
					'minDate':new Date().getFullYear() + '-' + new Date().getMonth() + '-' + (new Date().getDate() + 1), /*最小日期*/
					'maxDate':new Date().getFullYear() + 50 + '-12-31',/*最大日期*/
					'onSubmit':function(){/*确认时触发事件*/
						var theSelectData=calendar.value;
					},
					'onClose':function(){/*取消时触发事件*/
					}
				});
				//视频解读
				$(".unscrambleMode").change(function(){
					($(this).val()=="2") ? $(".unscrambleqq").show() : $(".unscrambleqq").hide();
				});
				//解读关系
				$(".unscrambleNumber").bind('input propertychange keyup', function() {
					(!common.checkIsEmpty($(this).val())) ? $(".unscrambleRelationship").show(): $(".unscrambleRelationship").hide();
				});
			}
		},
		//退出功能
		logout:function(){
			window.location.href = common.getRootPath() + "/logout";
		}
}