 
$( document ).ready(function() {
 
	 $( ".branchDetail" ).change(function() {
			var branchId=$(this).val();
			 $('.buildingId').empty();
			    $.ajax({
			        type:'GET',
			        contentType: "application/json",
			        url:'getAllBuilding',
			        data:{branchId:branchId},
			        dataType: "json",
			        success: function(data){ 
			        	$.each(data, function (i, building) {
			        		console.log(building.id);
			        		$('.buildingId').append('<option value="'+building.id+'">'+building.buildingCode+'</option>')
			        	});
			        },
			        error:function(xmlHttpRequest, textStatus, errorThrown){
			            if(xmlHttpRequest.readyState=0 || xmlHttpRequest.status == 0)
			                return;
			        },
			    });
			 
		});
		 
	  
	 // Get Floor By Building ID
	 $( ".buildingId" ).change(function() {
		 $('.FloorId').empty();
			var buildingId=$(this).val();
			 
			    $.ajax({
			        type:'GET',
			        contentType: "application/json",
			        url:'getAllFloor',
			        data:{buildingId:buildingId},
			        dataType: "json",
			        success: function(data){ 
			        	$.each(data, function (i, floor) {
			        		console.log(floor.id);
			        		$('.FloorId').append('<option value="'+floor.id+'">'+floor.floorCode+'</option>')
			        	});
			        },
			        error:function(xmlHttpRequest, textStatus, errorThrown){
			            if(xmlHttpRequest.readyState=0 || xmlHttpRequest.status == 0)
			                return;
			        },
			    });
			 
		});
});

 