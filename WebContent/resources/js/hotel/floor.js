$( document ).ready(function() {
 
$( ".branchDetail" ).change(function() {
	var branchId=$(this).val();
	 
	    $.ajax({
	        type:'GET',
	        contentType: "application/json",
	        url:'getAllBuilding',
	        data:{branchId:branchId},
	        dataType: "json",
	        success: function(data){ 
	        	$.each(data, function (i, building) {
	        		console.log(building.id);
	        		$('.buildingId')
		        		.find('option')
					    .remove()
					    .end()		
		        		.append('<option value="'+building.id+'">'+building.buildingName+'</option>')
	        	});
	        },
	        error:function(xmlHttpRequest, textStatus, errorThrown){
	            if(xmlHttpRequest.readyState=0 || xmlHttpRequest.status == 0)
	                return;
	        },
	    });
	 
});
});
  
   
 
