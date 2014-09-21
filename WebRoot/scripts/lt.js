/**
 * Created by Administrator on 14-6-7.
 */
$(document).ready(function()
{
    $(".cube").hover(function(){
        $(this).stop(true,false).animate({left:"650px",top:"515px"},1000);
        $(".topFace div").css("background","#F0E68C");
        $(".leftFace").css("background","#F0E68C");
        $(".rightFace").css("background","#F0E68C");
    },function(){
        $(this).stop(true,false).animate({left:"450px",top:"400px"},1000)
        $(".topFace div").css("background","#B8860B");
        $(".leftFace").css("background","#8B4513");
        $(".rightFace").css("background","#A0522D");
    });
    $(".cube1").hover(function(){
        $(this).stop(true,false).animate({left:"450px",top:"630px"},1000)
        $(".topFace1 div").css("background","#F0E68C");
        $(".leftFace1").css("background","#F0E68C");
        $(".rightFace1").css("background","#F0E68C");
    },function(){
        $(this).stop(true,false).animate({left:"250px",top:"515px"},1000)
        $(".topFace1 div").css("background","#B8860B");
        $(".leftFace1").css("background","#8B4513");
        $(".rightFace1").css("background","#A0522D");
    });
    $(".cube2").hover(function(){
        $(this).stop(true,false).animate({left:"250px",top:"745px"},1000)
        $(".topFace2 div").css("background","#F0E68C");
        $(".leftFace2").css("background","#F0E68C");
        $(".rightFace2").css("background","#F0E68C");
    },function(){
        $(this).stop(true,false).animate({left:"50px",top:"630px"},1000)
        $(".topFace2 div").css("background","#B8860B");
        $(".leftFace2").css("background","#8B4513");
        $(".rightFace2").css("background","#A0522D");
    });
});