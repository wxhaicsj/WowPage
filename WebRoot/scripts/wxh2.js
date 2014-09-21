/**
 * Created by Administrator on 14-5-17.
 */
$(document).ready(function()
{
   $(".wxh_btn span.close").click(function()
   {
      $(".content").slideUp();
   })
   $(".wxh_btn span.play").click(function()
   {
       $(".content").slideDown();
   })
});