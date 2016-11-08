$( document ).ready(function() {
 
$( ".branchDetail" ).change(function() {
	var branchId=$(this).val();
	alert (branchId)
	 
	    $.ajax({
	        type:'GET',
	        contentType: "application/json",
	        url:'getAllBuilding',
	        data:{branchId:branchId},
	        dataType: "json",
	        success: function(data){ 
             alert("coming here");
            	//here also i am getting the alertbox in jsp
	        },
	        error:function(xmlHttpRequest, textStatus, errorThrown){
	            if(xmlHttpRequest.readyState=0 || xmlHttpRequest.status == 0)
	                return;
	        },
	    });
	 
});
});
 


// If  success function Success create new select example below 
 
 /*
     success: function(data){ 
             $("#buildings").empty();
            $.each(data, function(index, optionData) {
                $("#buildings").append("<option value='"
                     + optionData.buildingId
                     + "'>" + optionData.buildingName
                     + "</option>");
            });
        });*/
  
   
 
