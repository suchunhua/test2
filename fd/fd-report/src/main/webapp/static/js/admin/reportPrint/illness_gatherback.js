var pages = {
	pageSelect : function(pageNo) {
		var ida=$("#nav_id").text();
    	var checkValue=$(".option1").find("option:selected").text();
        var jsvar1=$(".option2").find("option:selected").text();
        jsvar1=encodeURI(jsvar1);
        var othis = $(this);
        if(checkValue=="个体体质"){
        	var data = {jsvar1:jsvar1,pageNum:pageNo};
        	ajaxJktz(data);
        }
	}
}
$(document).ready(function(){
	var ida=$("#nav_id").text();
	var sex=$("#sex").text();
	var ss=$("#data1").text();
    var option_len=$(".option1 option").length;
    for(i=1;i<=option_len;i++){
        if($(".option1 option:nth-of-type("+i+")").text()==ss){
            $(".option1 option:nth-of-type("+i+")").attr("selected", true);
        }
    }
    var checkValue=$(".option1").val();
    if(checkValue=="constitution"){
        $(".option2").replaceWith("<select  class=\"option2\">"+
            "<option value=\"constitution\">个体体质</option>"+
            "</select>");
    }
    var ss=$("#data2").text();
    var option_len=$(".option2 option").length;
    for(i=1;i<=option_len;i++){
        if($(".option2 option:nth-of-type("+i+")").text()==ss){
            $(".option2 option:nth-of-type("+i+")").attr("selected", true);
        }
    }
    var checkValue=$(".option1").find("option:selected").text();
    var jsvar1=$(".option2").find("option:selected").text();
    jsvar1=encodeURI(jsvar1);
	
    if(checkValue=="个体体质"){
    	var data = {jsvar1:jsvar1};
    	ajaxJktz(data);
    }
    $(".option").on("change",".option1",function(){
        var checkValue=$(".option1").val();
        if(checkValue=="constitution"){
            $(".option2").replaceWith("<select  class=\"option2\">"+
                "<option value=\"constitution\">个体体质</option>"+
                "</select>");
        }
        if(checkValue=="tumour"){
            $(".option2").replaceWith("<select  class=\"option2\">"+
                "<option value=\"tumour\">遗传性肿瘤</option>"+
                "</select>");
        }
        if(checkValue=="xlt"){
            $(".option2").replaceWith("<select  class=\"option2\">"+
                "<option value=\"tumour\">线粒体遗传病</option>"+
                "</select>");
        }
        if(checkValue=="illness"&&(sex=="女"||sex=="未知-N")){
            $(".option2").replaceWith("<select  class=\"option2\">"+
            		"<option value=\"cardiac\">心脏类疾病</option>"+
            		"<option value=\"blood\">血管血液类疾病</option>"+
            		"<option value=\"diabetes\">糖尿病</option>"+
            		"<option value=\"immune\">神经类疾病</option>"+
            		"<option value=\"mental\">精神类疾病</option>"+
            		"<option value=\"sense\">感官类疾病</option>"+
            		"<option value=\"breathe\">肝脏类疾病</option>"+
            		"<option value=\"digestive\">骨骼和肌肉类疾病</option>"+
            		"<option value=\"urinary\">呼吸类疾病</option>"+
            		"<option value=\"skin\">消化系统疾病</option>"+
            		"<option value=\"skeleton\">泌尿和生殖系统疾病</option>"+
            		"<option value=\"endocrine\">皮肤类疾病</option>"+
            		"<option value=\"liver\">内分泌系统疾病</option>"+
            		"<option value=\"fk\">妇科类疾病</option>"+
            		"<option value=\"other\">其它类疾病</option>"+
            		"<option value=\"nerve\">免疫和代谢类</option>"+
                "</select>");
        }
        if(checkValue=="illness"&&sex=="男"){
            $(".option2").replaceWith("<select  class=\"option2\">"+
            		"<option value=\"cardiac\">心脏类疾病</option>"+
            		"<option value=\"blood\">血管血液类疾病</option>"+
            		"<option value=\"diabetes\">糖尿病</option>"+
            		"<option value=\"immune\">神经类疾病</option>"+
            		"<option value=\"mental\">精神类疾病</option>"+
            		"<option value=\"sense\">感官类疾病</option>"+
            		"<option value=\"breathe\">肝脏类疾病</option>"+
            		"<option value=\"digestive\">骨骼和肌肉类疾病</option>"+
            		"<option value=\"urinary\">呼吸类疾病</option>"+
            		"<option value=\"skin\">消化系统疾病</option>"+
            		"<option value=\"skeleton\">泌尿和生殖系统疾病</option>"+
            		"<option value=\"endocrine\">皮肤类疾病</option>"+
            		"<option value=\"liver\">内分泌系统疾病</option>"+
            		"<option value=\"other\">其它类疾病</option>"+
            		"<option value=\"nerve\">免疫和代谢类</option>"+
                "</select>");
        }
        if(checkValue=="single"){

        	 $(".option2").replaceWith("<select  class=\"option2\">"+
        			 "<option value=\"internal1\">内分泌及代谢系统</option>"+
                     "<option value=\"immune1\">多系统</option>"+
                     "<option>骨类和肌肉</option>"+
                     "<option>呼吸类</option>"+
                     "<option>神经和精神类</option>"+
                     "<option>泌尿和生殖系统</option>"+
                     "<option>皮肤类</option>"+
                     "<option>染色体病</option>"+
                     "<option>五官类</option>"+
                     "<option>血液类</option>"+
                     "<option>消化类</option>"+
                     "<option>心血管</option>"+
        	                "</select>");
        }
        var checkValue=$(".option1").find("option:selected").text();
        var jsvar1=$(".option2").find("option:selected").text();
        jsvar1=encodeURI(jsvar1);
        if(checkValue=="遗传性肿瘤"||checkValue=="遗传性疾病"||checkValue=="线粒体遗传病"){
        	var data = {jsvar1:jsvar1};
        	ajaxJbsc1(data);
        }
        if(checkValue=="单基因遗传病"){
        	var data = {jsvar1:jsvar1};
        	ajaxJbsc2(data);
        }
        if(checkValue=="个体体质"){
        	var data = {jsvar1:jsvar1};
        	ajaxJktz(data);
        }
    });
    
    $(".option").on("change",".option2",function(){
        var checkValue=$(".option1").find("option:selected").text();
        var jsvar1=$(".option2").find("option:selected").text();
        jsvar1=encodeURI(jsvar1);
        if(checkValue=="遗传性肿瘤"||checkValue=="遗传性疾病"||checkValue=="线粒体遗传病"){
        	var data = {jsvar1:jsvar1};
        	ajaxJbsc1(data);
        }
        if(checkValue=="单基因遗传病"){
        	var data = {jsvar1:jsvar1};
        	ajaxJbsc2(data);
        }
        if(checkValue=="个体体质"){
        	var data = {jsvar1:jsvar1};
        	ajaxJktz(data);
        }
    });
    
});


function ajaxJktz(data){
	$.ajax({
        url:$ctx+'/exome/jktz',
        async:false,    //或false,是否异步
        data:data,
        success:function(xhr){
        	$("#page").html(xhr);
        	$("table").each(function(){
                var disease=[],length= 0,rows=1;
                length=$(this).find("tr").length;
                for(i=2;i<=length;i++){
                    disease.push($(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(1)").text());
                }
                if(length>1){
                    for(i=length-2;i>0;i--){
                        if(disease[i]==disease[i-1]){
                            $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(1)").remove();
                            rows++;
                        }
                        else{
                            $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(1)").attr({"rowspan":rows});
                            rows=1;
                        }
                    }
                    $(this).find("tr:nth-of-type(2)").children("td:nth-of-type(1)").attr({"rowspan":rows});
                }
                for(i=2;i<=length;i++){
                    if($(this).find("tr:nth-of-type("+i+")").children("td").length==3){
                        $(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(2)").css({"border-left":"1px solid #d4d5d8"});
                    }
                }
            });
        	$(".data1").val(encodeURI($(".option1").find("option:selected").text()));
        	$(".data2").val(encodeURI($(".option2").find("option:selected").text()));
        }
    });
}