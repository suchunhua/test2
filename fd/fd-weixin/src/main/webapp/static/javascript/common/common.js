var common = {
		//获得当前项目的根路径  
		getRootPath : function(){
		    //获取当前网址，如： http://localhost:8080/ems/Pages/Basic/Person.jsp
		    var curWwwPath = window.document.location.href;
		    //获取主机地址之后的目录，如： /ems/Pages/Basic/Person.jsp
		    var pathName = window.document.location.pathname;
		    var pos = curWwwPath.indexOf(pathName);
		    //获取主机地址，如： http://localhost:8080
		    //var localhostPath = curWwwPath.substring(0, pos);
		    var a = curWwwPath.split("/",3)
		    var localhostPath = a[0] + "//" + a[2];
		    //获取带"/"的项目名，如：/ems
		    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
		    if(projectName == "/fd-weixin") { //暂时解决没有项目名问题
		    	return (localhostPath + projectName);
		    } else {
		    	return localhostPath;
		    }
		},
		//获取url中的参数
		getUrlParam : function(name){
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
			var r = window.location.search.substr(1).match(reg); //匹配目标参数
			if (r != null) return unescape(r[2]); return null; //返回参数值
		},
		//替换url中参数的值
		replaceParamVal : function(oldUrl, paramName, replaceWith){
			var re = eval('/(' + paramName + '=)([^&]*)/gi');
		    return oldUrl.replace(re, paramName + '=' + replaceWith);
		},
		//给url追加参数
		urlUpdateParams: function (url, name, value) {
		    var r = url;
		    if (r != null && r != 'undefined' && r != "") {
		        value = encodeURIComponent(value);
		        var reg = new RegExp("(^|)" + name + "=([^&]*)(|$)");
		        var tmp = name + "=" + value;
		        if (url.match(reg) != null) {
		            r = url.replace(eval(reg), tmp);
		        }else {
		        	r =  (url.match("[\?]")) ?  url + "&" + tmp : url + "?" + tmp;
		        }
		    }
		    return r;
		},
		//校验密码：只能输入6-20个字母、数字、下划线 
		isPasswd:function(str){ 
			return (str.match("^(\\w){6,20}$") == null)
		},
		//检查手机号
		checkMobilePhone : function(str){
			return (str.match("^1([0-9][0-9])\\d{8}$") == null) ? false : true;
		},
		//校验是手机号或者是电话
		checkIsTeleOrMobile:function(str){
		    if (/^0?1[3|4|5|8][0-9]\d{8}$/.test(str) || /^0[\d]{2,3}-[\d]{7,8}$/.test(str)) {
		        return true;
		    }else{
		        return false;
		    };
		},
		//检查字符串是否为空
		checkIsEmpty:function(str) {
			if (null != str && undefined != str && "" != str) {
				return false;
			}
			return true;
		},
		//检查某个对象是否滚动到了底部
		checkScrollSide:function(obj){
			var objOffTop = obj.children().length==0 ? obj.offset().top : obj.children().last().offset().top;
		    var alignHeight = $(window).scrollTop()+$(window).height()+Number(obj.children().height());
		    return (objOffTop < alignHeight ) ? true : false;
		},
		//保留2位小数
		returnFloat:function(value){
			var value=Math.round(parseFloat(value)*100)/100;
			var xsd=value.toString().split(".");
			if(xsd.length==1){
				value=value.toString()+".00";
				return value;
			}
			if(xsd.length>1){
				if(xsd[1].length<2){
					value=value.toString()+"0";
				}
				return value;
			}
		}
}