wr=function(o){
    document.write(o+"<br>");
};



String.prototype.trim=function() {
    return this.replace(/(^\s*)|(\s*$)/g,'');
};



var window = (function(){
    return this;
}());






var xmlHttp;
function createxmlHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    } else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}
function doGet(url){
    createxmlHttpRequest();
    xmlHttp.open("GET",url);
    xmlHttp.send(null);
    xmlHttp.onreadystatechange = function() {
        if ((xmlHttp.readyState == 4) && (xmlHttp.status == 200)) {
            var result=xmlHttp.responseText;
            document.getElementById("myDiv").innerText=result;
        }
    }
}
function doPost(url,data){
    createxmlHttpRequest();
    xmlHttp.open("POST",url);
    xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    xmlHttp.send(data);
    xmlHttp.onreadystatechange = function() {
        if ((xmlHttp.readyState == 4) && (xmlHttp.status == 200)) {
            var result=xmlHttp.responseText;
            document.getElementById("myDiv").innerText=result;
        }
    }
}




function subm(){
    var IdCard=$("#IdCard").val();
    flag=checkIdcard(IdCard);
    return flag;
}
function checkIdcard(idcard){
    if(idcard.length==0){
        return true;
    }
    var Errors=new Array(
        "验证通过!",
        "身份证号码位数不对!",
        "身份证号码出生日期超出范围或含有非法字符!",
        "身份证号码校验错误!",
        "身份证地区非法!"
    );
    var area={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"}


    var Y,JYM;
    var S,M;
    var idcard_array = new Array();
    idcard_array = idcard.split("");
//地区检验
    if(area[parseInt(idcard.substr(0,2))]==null)  {alert(Errors[4]); return false;}
//身份号码位数及格式检验
    switch(idcard.length){
        case 15:
            if ( (parseInt(idcard.substr(6,2))+1900) % 4 == 0 || ((parseInt(idcard.substr(6,2))+1900) % 100 == 0 && (parseInt(idcard.substr(6,2))+1900) % 4 == 0 )){
                ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;//测试出生日期的合法性
            } else {
                ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;//测试出生日期的合法性
            }
            if(ereg.test(idcard)) return true;
            else alert(Errors[2]); return false;
            break;
        case 18:
//18位身份号码检测
//出生日期的合法性检查
//闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))
//平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))
            if ( parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 && parseInt(idcard.substr(6,4))%4 == 0 )){
                ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;//闰年出生日期的合法性正则表达式
            } else {
                ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;//平年出生日期的合法性正则表达式
            }
            if(ereg.test(idcard)){//测试出生日期的合法性
//计算校验位
                S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7
                    + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9
                    + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
                    + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5
                    + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8
                    + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
                    + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2
                    + parseInt(idcard_array[7]) * 1
                    + parseInt(idcard_array[8]) * 6
                    + parseInt(idcard_array[9]) * 3 ;
                Y = S % 11;
                M = "F";
                JYM = "10X98765432";
                M = JYM.substr(Y,1);//判断校验位
                if(M == idcard_array[17]) return true; //检测ID的校验位
                else alert(Errors[3]); return false;
            }
            else alert(Errors[2]); return false;
            break;
        default:
            alert(Errors[1]);
            return false;
    }
}
$(document).ready(function(){
	 $("body").append("<div style=\"position: fixed;top:130px;left: 0;width: 50px;height: 300px;background-color:transparent;\" id=\"nav_left\">"+
		        "   <div style=\"width: 55px;height: auto;margin-top: 90px;\">"+
		        "      <div class=\"nav_left0\" >首&nbsp;页</div>"+
		        "      <div class=\"nav_left1\" title=\"疾病风险及个体体质\"><img src=\"img/left1.png\"></div>"+
		        "     <div class=\"nav_left2\" title=\"药物风险汇总\"><img src=\"img/left2.png\"></div>"+
		        "    <div class=\"nav_left3\" title=\"营养代谢能力\"><img src=\"img/left3.png\"></div>"+
		        "   <div class=\"nav_left4\"><img src=\"img/left4.png\"></div>"+
		        "    </div>"+
		        "</div>");
	 var id=$("#nav_id").text();
	 $("body").append("<form style=\"display:none;\"id=\"shouye\" action=\"exome_showFirst.action\" method='post'>"+
	            "<input type=\"text\" value=\""+id+"\" name=\"grbh\">"+
	            "<input type=\"submit\" >"+
	            "</form>");
	    $("body").append("<form style=\"display:none;\"id=\"illness_gather\" action=\"exome_jbsc.action\" method='post'>"+
	            "<input type=\"text\" value=\""+id+"\" name=\"grbh\">"+
	            "<input type=\"hidden\" name=\"testContent\" id=\"testContent\" value=\"遗传性肿瘤\">"+
	            "<input type=\"submit\" >"+
	            "</form>");
	    $("body").append("<form style=\"display:none;\"id=\"drug\" action=\"exome_dxjg.action\" method='post'>"+
	            "<input type=\"text\" value=\""+id+"\" name=\"grbh\">"+
	            "<input type=\"submit\" >"+
	            "</form>");
	    $("body").append("<form style=\"display:none;\"id=\"nutrition\" action=\"exome_yydx.action\" method='post'>"+
	            "<input type=\"text\" value=\""+id+"\" name=\"grbh\">"+
	            "<input type=\"submit\" >"+
	            "</form>");
	    $(".nav_left0").click(function(){
	    	$("#shouye").submit();
	    });
		    $(".nav_left1").click(function(){
		    	$("#illness_gather").submit();
		    });
		    $(".nav_left2").click(function(){
		    	$("#drug").submit();
		    });
		    $(".nav_left3").click(function(){
		    	$("#nutrition").submit();
		    });
		    $(".nav_left4").click(function(){
		        $("html,body").animate({scrollTop:0}, 500);
		    });
		    $(".nav").append(  "    <div class=\"mulu mulu4\">"+
		    		"      <div>变异汇总</div>"+
		    		"      <div class=\"hide\">"+
		    		"        <div>"+
		    		"           <form theme=\"simple\" action=\"exome_yszbtb\" style=\"display: inline-block;vertical-align: top;\" method='post'>"+
		    		"	<input type=\"hidden\" name=\"grbh\" class=\"grbh\">"+
		    		"	<input type=\"submit\"  value=\"不确定是否致病突变\" />"+
		    		"	</form>"+
		    		"        </div>"+
		    		"        <div>"+
		    		"            <form theme=\"simple\" action=\"exome_qxjy\" style=\"display: inline-block;vertical-align: top;\" method='post'>"+
		    		"	<input type=\"hidden\" name=\"grbh\" class=\"grbh\">"+
		    		"	<input type=\"submit\" method=\"qxjy\" value=\"缺陷基因\" />"+
		    		"	</form>"+
		    		"        </div>"+
		    		"       </div>"+
		    		"    </div>"+  
		    		"<div class=\"mulu mulu1\">"+
		    		"      <div>疾病风险及个体体质</div>"+
		    		"      <div class=\"hide\">"+
		    		"        <div>"+
		    		"           <form method='post' theme=\"simple\" action=\"exome_jbsc\" style=\"display: inline-block;vertical-align: top;\">"+
		    		"	           <input type=\"hidden\" name=\"grbh\" class=\"grbh\">"+
		    		"	           <input type=\"hidden\" name=\"testContent\" class=\"testContent\" value=\"遗传性肿瘤\">"+
		    		"	           <input type=\"submit\" value=\"查看详情\" />"+
		    		"	       </form>"+
		    		"        </div>"+
		    		"      </div>"+
		    		"    </div>"+
		    		"    <div class=\"mulu mulu2\">"+
		    		"      <div>药物风险筛查</div>"+
		    		"        <div>"+
		    		"           <form method='post' theme=\"simple\" action=\"exome_zydb\" style=\"display: inline-block;vertical-align: top;\">"+
		    		"	<input type=\"hidden\" name=\"grbh\" class=\"grbhgrbh\">"+
		    		"	<input type=\"submit\"  value=\"药物代谢酶和作用靶点基因信息汇总\" />"+
		    		"	</form>"+
		    		"        </div>"+
		    		"        <div>"+
		    		"           <form method='post' theme=\"simple\" action=\"exome_dxjg\" style=\"display: inline-block;vertical-align: top;\">"+
		    		"	<input type=\"hidden\" name=\"grbh\" class=\"grbh\">"+
		    		"	<input type=\"submit\"  value=\"查看详情\" />"+
		    		"	</form>"+
		    		"        </div>"+
		    		"      </div>"+
		    		"    </div>"+
		    		"    <div class=\"mulu mulu3\">"+
		    		"      <div>营养代谢能力</div>"+
		    		"      <div class=\"hide\">"+
		    		"        <div>"+
		    		"           <form method='post' theme=\"simple\" action=\"exome_yydx\" style=\"display: inline-block;vertical-align: top;\">"+
		    		"	<input type=\"hidden\" name=\"grbh\" class=\"grbh\">"+
		    		"	<input type=\"submit\"  value=\"查看详情\" />"+
		    		"	</form>"+
		    		"        </div>"+
		    		"      </div>"+
		    		"    </div>"+
		    		"    <div class=\"mulu mulu5\">"+
		    		"       <div>趣味检测</div>"+
		    		"      <div class=\"hide\">"+
		    		"        <div>"+
		    		"     <form method='post' theme=\"simple\" action=\"exome_ggph\" style=\"display: inline-block;vertical-align: top;\">"+
		    		"	<input type=\"hidden\" name=\"grbh\" class=\"grbh\">"+
		    		"	<input type=\"submit\"  value=\"感官偏好\" />"+
		    		"	</form>"+
		    		"	</div>"+
		    		"    <div>"+
		    		"     <form method='post' theme=\"simple\" action=\"exome_zlsc\" style=\"display: inline-block;vertical-align: top;\">"+
		    		"	<input type=\"hidden\" name=\"grbh\" class=\"grbh\">"+
		    		"	<input type=\"submit\"  value=\"智力分析\" />"+
		    		"	</form>"+
		    		"	</div>"+
		    		"    <div>"+
		    		"     <form method='post' theme=\"simple\" action=\"exome_ydtf\" style=\"display: inline-block;vertical-align: top;\">"+
		    		"	<input type=\"hidden\" name=\"grbh\" class=\"grbh\">"+
		    		"	<input type=\"submit\" method=\"ydtf\" value=\"个体运动天赋\" />"+
		    		"	</form>"+
		    		"	</div>"+
		    		 "   </div>"+
		    		"</div>");
		    $(".nav").append("<div style=\"color:#fff;position:absolute;right:5%;top:25px;\" id=\"logOff\">退出</div>");
		    $("#logOff").mouseenter(function(){
		        $(this).css({"text-decoration":"underline",
		        	"cursor":"pointer"});
		    }).mouseleave(function(){
		        $(this).css({"text-decoration":"none",
		        	"cursor":"auto"});
		    });
		    $("#logOff").click(function() {
				valid = confirm("确定注销吗？");
				if (valid == true) {
					window.location.href = "../../user_logOff.action";
				} 
			});
		    $(".mulu").each(function(){
		        $(this).mouseenter(function(){
		            $(this).children(".hide").show();
		        }).mouseleave(function(){
		            $(this).children(".hide").hide();
		        });
		    });
		    $(".hide .grbh").val(id); 
		    String.prototype.null1=function() {
		        return this.replace(/\s+/g,'%Null%');
		    };
		    $("input[type=\"hide\"]").each(function(){
		    	var str=$(this).val();
		    	str=str.null1();
		    	$(this).val(str);
		    });
});
