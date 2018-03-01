$(document).ready(function(){
    var wubianxing_width=$(".wrap .top>div:nth-of-type(1)").outerWidth();
    $(".wrap").css({"background-size":wubianxing_width+'px'});
    
    
    var len=$(".table1 tr").length;
//    for(i=2;i<=len;i++){
//        str=$(".table1 tr:nth-of-type("+i+") td:nth-of-type(2)").text();
//        str_len=str.length;
//        str=str.slice(-3,str_len);
//        $(".table1 tr:nth-of-type("+i+") td:nth-of-type(2)").text("rs*"+str);
//    }
    

    var disease=[],length= 0,rows=1;
    length=$(".table1").find("tr").length;
    for(i=2;i<=length;i++){
    disease.push($(".table1").find("tr:nth-of-type("+i+")").children("td:nth-of-type(1)").text());
    }
    if(length>1){
    	for (var i = length; i > 1; i--) {
            if(i==2){
                border_bottom_none = 2;
            }
            if (disease[i - 3] != disease[i - 2]) {
                border_bottom_none = i;
                break;
            }
        }
    for(i=length-1;i>0;i--){
    if(disease[i]==disease[i-1]){
    $(".table1").find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(1)").remove();
    rows++;
    }
    else{
    $(".table1").find("tr:nth-of-type("+(i+2)+")").children("td:nth-of-type(1)").attr({"rowspan":rows});
    rows=1;
    }
    }
    $(".table1").find("tr:nth-of-type(2)").children("td:nth-of-type(1)").attr({"rowspan":rows});
    $(".table1").find("tr:nth-of-type("+border_bottom_none+")").children("td:nth-of-type(1)").css({"border-bottom-left-radius":'9px'});
    
  }
    $(".fanhui img").click(function(){
        //$("#fanhui").submit();
    	$("#fanhui_aa").click();
    	
    });
    $(".fanhui").mouseenter(function(){
    	$(".fanhui div").show();
    });
    $(".fanhui").mouseleave(function(){
    	$(".fanhui div").hide();
    });
   
});