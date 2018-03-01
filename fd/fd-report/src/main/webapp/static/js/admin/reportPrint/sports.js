$(document).ready(function(){
$(".value").each(function(){
        var val=$(this).parent("form").prev().text();
        $(this).attr({"value":val});
    });
var patt = new RegExp('较');
len=$(".table1 tr").length;
for(i=2;i<=len;i++){
	var str = $(".table1 tr:nth-of-type("+i+") td:nth-of-type(2)").text().trim();
	if(patt.test(str)){
		$(".table1 tr:nth-of-type("+i+") td").css({"color":"#DC143C"});
		$(".table1 tr:nth-of-type("+i+") td input").css({"color":"#DC143C"});
    }
}
});