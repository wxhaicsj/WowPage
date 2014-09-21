/**
 * Created by Administrator on 14-5-18.
 */
$(document).ready(function()
{
    var page=1;
    var i=7;

    $("span.wxh_jh_s").click(function()
    {
        var $parent=$(this).parent("div.wxh_dada");

        if(!$parent.is(":animated"))
     {
        if(page==4){
            $(".wxh_dada ul").animate({left:"+=2730px"},2000)
            page=1;
        }else{
            $(".wxh_dada ul").animate({left:"-=910px"},2000)
            page++
        }
     }


    })
});