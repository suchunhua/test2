var passport = {
		//登录模块
		login:{
			login:function(){
				var username = $("#username").val();
				var password = $("#password").val();
				if(common.checkIsEmpty(username)){
					$(".error").show().find('span').html("请输入用户名");
					return false;
				}
				if(common.checkIsEmpty(password)){
					$(".error").show().find('span').html("请输入密码");
					return false;
				}
				$("#loginForm").submit();
			},
			init:function(){
				//cas单点登录功能
				if(common.checkIsEmpty($(".error span").html())){//判断没有错误提示是加载cas
					if(!common.checkIsEmpty($("#casIframe").attr('data-src'))){
						$("#casIframe").attr("src", $("#casIframe").attr('data-src')); 
						$("#casIframe").load(function() { 
							$.ajax({
				                url: $("#casIframe").attr('data-src'),
				                type: "get",
				                dataType: "json",
				                error: function(XMLHttpRequest, textStatus, errorThrown) {
				                    if(Number(XMLHttpRequest.status)== 200){
				                    	window.location.href=common.getRootPath()+"/exome/home?urlactive=home";
				                    }else{
				                    	$("#casIframe").remove();
				                    }
				                }
				            });
						});
					}
				}
				//用户名、密码回车提交登录
				$("#username,#password").keyup(function(event){
					if(event.keyCode == 13){
						passport.login.login();
					}
				});
			}
		},
		//找回密码模块
		findPassword:{
			//2分钟
			countdown:120,
			settime:function(val){
				var othis = val;
				if (passport.findPassword.countdown == 0 && othis.hasClass('disabled')) {  
					othis.removeAttr('disabled');
					othis.removeClass("disabled");
					othis.html("获取验证码"); 
					clearInterval(timer1);
					passport.findPassword.countdown = 60; 
				} else { 
					othis.attr('disabled', true);
					othis.addClass("disabled");
					othis.html("重新发送(" + passport.findPassword.countdown + ")"); 
					passport.findPassword.countdown--; 
					var timer1 = setTimeout(function() {
						passport.findPassword.settime(othis)
					}, 1000)
				} 
			},
			//发送验证码
			sendCode:function(obj){
				var othis = $(obj),useVerifyNumber = $("#useVerifyNumber").val();
				if(!othis.hasClass('disabled')){
					othis.addClass("disabled");
					if (common.checkIsEmpty(useVerifyNumber)) {
						$(".error").show().find('span').html("请输入身份证或手机或邮箱");
						othis.removeClass("disabled");
						return false;
					}
					$.ajax({
						url : common.getRootPath()+"/sendCode",
						type : "post",
						data : {"useVerifyNumber":useVerifyNumber},
						dataType : "json",
						success : function(data) {
							if (data.flag) {
								passport.findPassword.settime(othis);
							} else {
								$(".error").show().find('span').html(data.msg);
							}
						}
					});
				}
			},
			submitForm:function(params){
				var useVerifyNumber = $("#useVerifyNumber").val(),code = $("#code").val();
				if(common.checkIsEmpty(useVerifyNumber)){
					$(".error").show().find('span').html("请输入身份证或手机或邮箱");
					return false;
				}
				if(common.checkIsEmpty(code)){
					$(".error").show().find('span').html("请输入验证码");
					return false;
				}
				$("#nextForm").submit();
			},
			//修改密码
			updatePassword:function(){
				var password = $("#password").val(),repassword = $("#repassword").val();
				if(common.checkIsEmpty(password) || common.checkIsEmpty(password)) {
					$(".error").show().find('span').html("请输入新密码");
					return false;
	    		}
	    		if(password.trim() != repassword){
	    	    	$(".error").show().find('span').html("两次密码不一致");
					return false;
	    		}
	    		if(common.isPasswd(password)){
	    			$(".error").show().find('span').html("请输入6到20位由字母数字下划线组成的密码");
					return false;
	    		}
				$("#updateForm").submit();
			},
			init:function(){
				//新密码、再次输入密码回车提交修改
				$("#password,#repassword").keyup(function(event){
					if(event.keyCode == 13){
						passport.findPassword.updatePassword();
					}
				});
			}
		},
		init:function(){
		}
}
