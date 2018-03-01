$(document).ready(function(){
	 var appendix1=$("body>.appendix1").outerHeight(true);
	    for(i=1;i<20;i++){
	        if(2090*i>=appendix1){
	        	appendix1=2090*i;
	            break;
	        }
	    }
	    $("body>.appendix1").outerHeight(appendix1);
    var appendix_offset=Math.round($("#appendix").offset().top/2090-1);
    $("span.appendix").text(appendix_offset);
    var fda_offset=Math.round($("#fda").offset().top/2090-1);
    $("span.fda").text(fda_offset);
});