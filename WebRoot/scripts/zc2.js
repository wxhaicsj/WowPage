$(document).ready(function(){

 $("#email").bind("blur",function(){
                    var $email=$(this);
                    var jsonObj={
                    email:$email.val()
                };

                //var jsonObj=$("#form1").serialize();
  
                $.get("checkEmail.jsp",jsonObj,function(data,textStatus){
                    //alert(data);
                    if(data==1)
                    {
                        $email.next().show();
                        $email.next().next().hide();
                       //$("img").eq(0).show();
                       // $("img").eq(1).hide();
                    }
                    else
                    {
                        $email.next().hide();
                        $email.next().next().show();
                       // $("img").eq(0).hide();
                       // $("img").eq(1).show();
                    }
                    //alert(data);
                    //$("#one").text(data);
            
                    
                });
               });

});