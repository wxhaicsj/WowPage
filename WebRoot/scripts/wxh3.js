/**
 * Created by Administrator on 14-5-20.
 */
$(document).ready(function()
{
    /*1*/
    $("li.menu-home").hover(function()
    {
        $("li.menu-home").addClass("menu-home-current");
       // $(this).children("span").children("em").css("color","white");

    },function()
    {
        $("li.menu-home").removeClass("menu-home-current");
    });
    /*2*/
    $("li.menu-game").hover(function()
    {
        $("li.menu-game").addClass("menu-game-current");
    },function()
    {
        $("li.menu-game").removeClass("menu-game-current");
    });
    /*3*/
    $("li.menu-community").hover(function()
    {
        $("li.menu-community").addClass("menu-community-current");
    },function()
    {
        $("li.menu-community").removeClass("menu-community-current");
    });
    /*4*/
    $("li.menu-media").hover(function()
    {
        $("li.menu-media").addClass("menu-media-current");
    },function()
    {
        $("li.menu-media").removeClass("menu-media-current");
    });
    /*5*/
    $("li.menu-forums").hover(function()
    {
        $("li.menu-forums").addClass("menu-forums-current");
    },function()
    {
        $("li.menu-forums").removeClass("menu-forums-current");
    });
    /*6*/
    $("li.menu-services").hover(function()
    {
        $("li.menu-services").addClass("menu-services-current");
    },function()
    {
        $("li.menu-services").removeClass("menu-services-current");
    });
    /*7*/
    $(".bao").hover(function()
    {
        $(".bao").addClass("bao1");
    },function()
    {
        $(".bao").removeClass("bao1");
    });
    /*8*/
    $(".bao").toggle(function(){
        $(".wxh_wow2").css("background","url('img2/bg6.jpg') repeat");
   },function(){
      $(".wxh_wow2").css("background","url('img2/bg7.jpg') repeat");
    },function(){
       $(".wxh_wow2").css("background","url('img2/bg8.jpg') repeat");
    },function(){
        $(".wxh_wow2").css("background","url('img2/bg5.jpg') repeat");
    });

});