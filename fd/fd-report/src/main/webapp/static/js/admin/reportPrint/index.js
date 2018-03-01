$(document).ready(function(){
$(".tumour input[type=\"submit\"]").each(function(){
        var val=$(this).parent("form").prev().text();
        $(this).attr({"value":val});
    });
$("table").each(function(){
	/*var disease1=[],length= 0,rows=1,disease2=[];
    length=$(this).find("tr").length;
    for(i=2;i<=length;i++){
        disease1.push($(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(1)").text());
    }
    
    var disease=[],length= 0,rows=1;
    length=$(this).find("tr").length;
    for(i=2;i<=length;i++){
        disease.push($(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(6)").text());
    }
    if(length>1){
        for(i=length-2;i>0;i--){
            if(disease[i]==disease[i-1]&&disease1[i]==disease1[i-1]){
                $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(6)").remove();
                disease2.push((i+2));
                rows++;
            }
            else{
                $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(6)").attr({"rowspan":rows});
                rows=1;
            }
        }
        $(this).find("tr:nth-of-type(2)").children("td:nth-of-type(6)").attr({"rowspan":rows});
    }

    var disease=[],length= 0,rows=1;
    length=$(this).find("tr").length;
    for(i=2;i<=length;i++){
        disease.push($(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(5)").text());
    }
    if(length>1){
        for(i=length-2;i>0;i--){
            if(disease[i]==disease[i-1]&&disease1[i]==disease1[i-1]){
                $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(5)").remove();
                rows++;
            }
            else{
                $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(5)").attr({"rowspan":rows});
                rows=1;
            }
        }
        $(this).find("tr:nth-of-type(2)").children("td:nth-of-type(5)").attr({"rowspan":rows});
    }

    var disease=[],length= 0,rows=1;
    length=$(this).find("tr").length;
    for(i=2;i<=length;i++){
        disease.push($(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(4)").text());
    }
    if(length>1){
        for(i=length-2;i>0;i--){
            if(disease[i]==disease[i-1]&&disease1[i]==disease1[i-1]){
                $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(4)").remove();
                rows++;
            }
            else{
                $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(4)").attr({"rowspan":rows});
                rows=1;
            }
        }
        $(this).find("tr:nth-of-type(2)").children("td:nth-of-type(4)").attr({"rowspan":rows});
    }
    var disease=[],length= 0,rows=1;
    length=$(this).find("tr").length;
    for(i=2;i<=length;i++){
        disease.push($(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(2)").text());
    }
    if(length>1){
        for(i=length-2;i>0;i--){
            if(disease[i]==disease[i-1]&&disease1[i]==disease1[i-1]){
                $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(2)").remove();
                rows++;
            }
            else{
                $(this).find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(2)").attr({"rowspan":rows});
                rows=1;
            }
        }
        $(this).find("tr:nth-of-type(2)").children("td:nth-of-type(2)").attr({"rowspan":rows});
    }

    var disease=[],length= 0,rows=1;
    length=$(this).find("tr").length;
    for(i=2;i<=length;i++){
        disease.push($(this).find("tr:nth-of-type("+i+")").children("td:nth-of-type(1)").text());
    }
    if(length>1){
        for(i=length-2;i>0;i--){
            if(disease[i]==disease[i-1]&&disease1[i]==disease1[i-1]){
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
   for(i=0;i<disease2.length;i++){
    	$(this).find("tr:nth-of-type("+disease2[i]+")").children("td:nth-last-of-type(1)").css({"border-right":"none"});
    }*/
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
});   

});