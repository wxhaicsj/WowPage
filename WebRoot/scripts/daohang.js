/**
 * Created by Administrator on 14-6-7.
 */
$(document).ready(function()
{
   $(".cal").hover(function(){
      $(this).children("ul").stop(true,true).slideDown(400);
   },function()
   {
       $(this).children("ul").stop(true,true).slideUp("fast");
   });
    /*气球上下移动*/


function fun()
{
    $(".bbk").animate({top:"170px"},2000)
        .animate({top:"340px"},2000)
    $(".bbk2").animate({top:"170px"},2000)
        .animate({top:"240px"},2000)
}
    setInterval(fun,4000);


});