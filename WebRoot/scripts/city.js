$().ready(function(){

			var xmlDoc=null;

	        $.get("cities.xml",function(xml){
				xmlDoc=xml;
				
		
				var $provinceXml=$(xml).find("province");
				
				$provinceXml.each(function(index,domEle){
					
					var nameAttr=$(domEle).attr("name");
			       // var nameText=$(domEle).attr("name");
					
					var $option=$("<option></option>");
					$option.attr("value",nameAttr);
					//alert(nameAttr);
					$option.text(nameAttr);
					//alert(nameText);
					$("#province").append($option)
					
				});
			});

     $("#province").change(function(){
            var pvalue=$(this).val();
         
			$("#city option[value!='']").remove();
	   
	   
	       	var $provinceXml=$(xmlDoc).find("province");
			$provinceXml.each(function(index,domEle){
               var nameAttr=$(domEle).attr("name");
	       // alert(nameAttr);
			   if(nameAttr==pvalue){
			  
			     var $cityXml=$(domEle).find("city");
                 $cityXml.each(function(index,domEleCity){
				
				 	var cityValue=$(domEleCity).text();
				 	//var cityValue=$(domEleCity).value();
				 	//var cityText=$(domEleCity).text();
					var $option=$("<option></option>");
					$option.attr("value",cityValue);
					$option.text(cityValue);
					$("#city").append($option);
				 });			
			   }
			});
	 });
 });
