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
	        	$.each(data, function (i, jsondata) {
	        		$('.buildingId').append('<option value="'+jsondata.branch.id+'">'+jsondata.branch.branchName+'</option>')
	        	});
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
  
   
 
