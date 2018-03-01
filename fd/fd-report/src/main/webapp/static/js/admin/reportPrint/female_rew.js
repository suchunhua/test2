$(document).ready(function(){
    $("body>div").outerWidth(1480);
    var cover=$(".cover").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=cover){
            cover=2090*i;
            break;
        }
    }
    $(".cover").outerHeight(cover);
    var respect=$(".respect").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=respect){
            respect=2090*i;
            break;
        }
    }
    $(".respect").outerHeight(respect);
    var project=$(".project").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=project){
            project=2090*i;
            break;
        }
    }
    $(".project").outerHeight(project);
    var basic=$(".basic").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=basic){
            basic=2090*i;
            break;
        }
    }
    $(".basic").outerHeight(basic);
    var gather=$(".gather").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=gather){
            gather=2090*i;
            break;
        }
    }
    $(".gather").outerHeight(gather);
    var pharmacy=$(".pharmacy").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=pharmacy){
            pharmacy=2090*i;
            break;
        }
    }
    $(".pharmacy").outerHeight(pharmacy);
    var cover1=$(".cover1").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=cover1){
            cover1=2090*i;
            break;
        }
    }
    $(".cover1").outerHeight(cover1);
    var result=$(".result").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=result){
            result=2090*i;
            break;
        }
    }
    $(".result").outerHeight(result);
    var cancer=$(".cancer").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=cancer){
            cancer=2090*i;
            break;
        }
    }
    $(".cancer").outerHeight(cancer);
    var gene=$(".gene").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=gene){
            gene=2090*i;
            break;
        }
    }
    $(".gene").outerHeight(gene);
    var gene_rew=$(".gene_rew").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=gene_rew){
            gene_rew=2090*i;
            break;
        }
    }
    $(".gene_rew").outerHeight(gene_rew);
    var gene1=$(".gene1").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=gene1){
            gene1=2090*i;
            break;
        }
    }
    $(".gene1").outerHeight(gene1);
    var significance=$(".significance").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=significance){
            significance=2090*i;
            break;
        }
    }
    $(".significance").outerHeight(significance);
    var synopsis=$(".synopsis").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=synopsis){
            synopsis=2090*i;
            break;
        }
    }
    $(".synopsis").outerHeight(synopsis);
    var appendix=$(".appendix").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=appendix){
            appendix=2090*i;
            break;
        }
    }
    $(".appendix").outerHeight(appendix);
    var appendix2=$(".appendix2").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=appendix2){
            appendix2=2090*i;
            break;
        }
    }
    $(".appendix2").outerHeight(appendix2);
    var appendix3=$(".appendix2").outerHeight(true);
    for(i=1;i<20;i++){
        if(2090*i>=appendix3){
            appendix2=2090*i;
            break;
        }
    }
    $(".appendix3").outerHeight(appendix3);
    $(".gene table tr").add(".gene1 table tr").each(function(){
        if ($(this).children("td").length==3){
            $(this).children(":first").css({
                "background":"rgb(255,225,235)",
                "font-weight":"bold"
            });
        }
    });
    $(".gene table tr:nth-of-type(1) td").css({"background":"rgb(255,147,183)"});
    $(".significance").each(function(){
        var midheight=0;
        for(i=1;i<=3;i++){
            var innerheight= 0,padding= 0,outerheight=0;
            if($(this).children("div:nth-of-type(1)").children("div:nth-of-type("+i+")").outerHeight(true)>$(this).children("div:nth-of-type(3)").children("div:nth-of-type("+i+")").outerHeight(true)){
                padding=($(this).children("div:nth-of-type(1)").children("div:nth-of-type("+i+")").outerHeight(true)-$(this).children("div:nth-of-type(3)").children("div:nth-of-type("+i+")").outerHeight(true))/2+13;
                $(this).children("div:nth-of-type(3)").children("div:nth-of-type("+i+")").children("div:nth-of-type(2)").children("div:nth-of-type(1)").css({"padding-top":padding+"px","padding-bottom":padding+"px"});
                innerheight=$(this).children("div:nth-of-type(1)").children("div:nth-of-type("+i+")").outerHeight();
                outerheight=$(this).children("div:nth-of-type(1)").children("div:nth-of-type("+i+")").outerHeight(true);
            }else{
                padding=($(this).children("div:nth-of-type(3)").children("div:nth-of-type("+i+")").outerHeight(true)-$(this).children("div:nth-of-type(1)").children("div:nth-of-type("+i+")").outerHeight(true))/2+13;
                $(this).children("div:nth-of-type(1)").children("div:nth-of-type("+i+")").children("div:nth-of-type(1)").children("div:nth-of-type(1)").css({"padding-top":padding+"px","padding-bottom":padding+"px"});
                innerheight=$(this).children("div:nth-of-type(3)").children("div:nth-of-type("+i+")").outerHeight();
                outerheight=$(this).children("div:nth-of-type(3)").children("div:nth-of-type("+i+")").outerHeight(true);
            }
            innerheight/=2;
            innerheight-=30;
            midheight+=outerheight;
            $(this).children("div:nth-of-type(3)").children("div:nth-of-type("+i+")").children("div:nth-of-type(1)").css({"margin-top":innerheight});
            $(this).children("div:nth-of-type(1)").children("div:nth-of-type("+i+")").children("div:nth-of-type(2)").css({"margin-top":innerheight});
        }
        $(this).children("div:nth-of-type(2)").css({"height":midheight});
    });
});/**
 * Created by Zhou_Dianfei on 2016/9/1.
 */
