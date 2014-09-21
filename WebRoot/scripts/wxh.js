$(document).ready(function()
{
    var page=1,
        i = 3,
        $parent = $('div.w_xh');

    var next = function(){
        var $w_xh=$parent.find("div.w_2_list");
        var $w_2=$parent.find("div.w_2");
        var w_width=$w_2.width();
        var len=$w_xh.find("li").length;
        var page_count=Math.ceil(len/i);
        if(!$w_xh.is(":animated")){
        if(page==page_count)
        {
            $(".w_xh ul").animate({left:"0px"},1000)
            page=1;
        }else{
            $(".w_xh ul").animate({left:"-="+w_width+"px"},1000);
            page++;
        }
        }
        $parent.find("span").eq((page-1)).addClass("current").siblings().removeClass("current");

       //  Timer1=setTimeout(next,6000);
    }
   // var Timer1=setTimeout(next,6000);
    var prev = function(){
        var $w_xh=$parent.find("div.w_2_list");
        var $w_2=$parent.find("div.w_2");
        var w_width=$w_2.width();
        var len=$w_xh.find("li").length;
        var page_count=Math.ceil(len/i);
        if(!$w_xh.is(":animated")){
            if(page==1)
            {
                $(".w_xh ul").animate({left:"-="+w_width*(page_count-1)+"px"},1000)
                page=page_count;
            }else{
                $(".w_xh ul").animate({left:"+="+w_width+"px"},1000);
                page--;
            }
        }
        $parent.find("span").eq((page-1)).addClass("current").siblings().removeClass("current");
    }
    $("span.next").click(function(){
       next();
    });
    $("span.prev").click(function(){
       prev();
    });
    //window.setInterval(next,3000);
    /*点击DIV.w_1可以取消轮播，点击DIV.w_2可以开始轮播*/
 var setinterid=setInterval(next,6000);
    $(".w_1").click(function()
    {
      clearInterval(setinterid);
    });

    $(".w_2").click(function()
    {
        setInterval(next,6000);
    })
   /*成功settiomeout 有小BUG */
   // var Timer1=setTimeout(next,6000);
  /*  $(".w_1").mouseover(function()
    {
        clearTimeout(Timer1);
    });
    $(".w_1").mouseout(function()
    {
        setTimeout(next,6000)
    })*/
});