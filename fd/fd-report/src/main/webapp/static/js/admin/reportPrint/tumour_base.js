$(document).ready(function(){ 

    var high_frequency=document.getElementsByClassName("high_frequency")[0];
    var high_frequency_table=high_frequency.getElementsByTagName("table")[0];
    if (high_frequency.getElementsByTagName("table").length>0){
    	var high_frequency_table_tr_length=high_frequency_table.rows.length;
        for(i=0;i<high_frequency_table_tr_length;i++){
            var high_frequency_table_tri_td_length=high_frequency_table.rows[i].cells.length;
            if (high_frequency_table_tri_td_length==2){
                high_frequency_table.rows[i].cells[0].style.fontWeight="normal";
            }
        }
    }
    var bafi=$(".basic_information_table>div:nth-of-type(1)").height();
    var base=$(".basic_information_table>div:nth-of-type(2)").height();
    if(bafi>base){
    	$(".basic_information_table>div:nth-of-type(2)").height(bafi);
    }else{
    	$(".basic_information_table>div:nth-of-type(1)").height(base);
    }
    String.prototype.trim=function() {
        return this.replace(/(^\s*)|(\s*$)/g,'');
    };
    var ta1 = document.getElementById("variation1");
	var len = ta1.rows.length;
	var ll = document.getElementsByName("variation_type1");
	var a=1,aa=1;
	if (len>=4) {
		for(var i = len-4; i > 0 ; i--){
			if(ll[i].value.trim() == ll[i-1].value.trim()){
				ta1.rows[i+2].cells[0].style.display="none";
				a++; 
				}
			 	else{
				ta1.rows[i+2].cells[0].rowSpan = a;
				if(aa==1){
				aa=0;
				}
				a= 1;
			}
			}
			ta1.rows[2].cells[0].rowSpan=a;}
	
	var ta1 = document.getElementById("variation2");
	var len = ta1.rows.length;
	var ll = document.getElementsByName("variation_type2");
	var a=1,aa=1;
	if (len>=3) {
		if(len>3){
		for(var i = len-3; i > 0 ; i--){
			if(ll[i].value.trim() == ll[i-1].value.trim()){
				ta1.rows[i+2].cells[0].style.display="none";
				a++; 
				}
			 	else{
				ta1.rows[i+2].cells[0].rowSpan = a;
				if(aa==1){
				aa=0;
				}
				a= 1;
			}
			}
		}
			ta1.rows[2].cells[0].rowSpan=a;}
	var variation2=$("#variation2");
	if(variation2.children("tbody").children("tr").length<3){
	    variation2.append("<tr><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td></tr>");
	}
	var variation1=$("#variation1");
	if(variation1.children("tbody").children("tr").length<3){
	    variation1.append("<tr><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td><td>---</td></tr>");
	}
	var variation3=$("#variation3");
	if(variation3.children("tbody").children("tr").length<3){
	    variation3.append("<tr><td>---</td><td>---</td><td>---</td><td>---</td></tr>");
	}
	var variation4=$("#variation4");
	if(variation4.children("tbody").children("tr").length<3){
	    variation4.append("<tr><td>---</td><td>---</td><td>---</td><td>---</td></tr>");
	}
});

