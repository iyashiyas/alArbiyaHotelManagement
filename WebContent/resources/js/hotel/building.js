$( document ).ready(function() {
 
	 $('.buildingEditbtn').click(function() {
		   
		var $row = $(this).parent('tr')
	  
		$('#editBuildingModal').find("#id").val($row.find(".id").text())
		$('#editBuildingModal').find("#buildingName").val($row.find(".buildingName").text())
		$('#editBuildingModal').find("#buildingCode").val($row.find(".buildingCode").text())
		$('#editBuildingModal').find("#buildingPhoneNumber").val($row.find(".buildingPhoneNumber").text())
		$('#editBuildingModal').find("#buildingEmail").val($row.find(".buildingEmail").text())
		$('#editBuildingModal').find("#buildingTotalFloor").val($row.find(".buildingTotalFloor").text())
		$('#editBuildingModal').find("#buildingDescription").val($row.find(".buildingDescription").text())
	    $('#editBuildingModal').find("#branchName").val($row.find(".branchName").text())
	    $('#editBuildingModal').find("#branchId").val($row.find(".branchId").text())
	   
		//branchName
		
		if($row.find(".buildingStatus").text()=="ENABLE" || $row.find(".buildingStatus").text()=="ENABLED") {
			$('#editBuildingModal').find("#buildingStatus").prop('checked',true)
		} else {
			$('#editBuildingModal').find("#buildingStatus").prop('checked',false)
		}
		 	
		$('#editBuildingModal').modal({
		    backdrop: 'static',
		    keyboard: true,
		    show: true});
	});
	
});
function handleSuccess() {
	$('#editBuildingModal').modal('hide');
	location.reload();
}
	 
/*$('.submitBtn').click(function() {
	var $form = $(this).parent('form');
	$('.addBuildingForm').removeClass('addBuildingForm');
	$form.addClass('addBuildingForm');
});

$('#submit').click(function() {
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	var $form = $('.addBuildingForm');
	var csrf=$form.find("#secuirtyId").val();
	$.ajax({ 
	    url :'/alArbiyaHotelManagement/hotel/addBuilding' $(".addBuildingForm").attr("action"), 
	    type :'POST',
	    beforeSend: function(xhr) {
          // here it is
         xhr.setRequestHeader(header, token);
        },
		success: handleSuccess1,
		error:handleError1
	}); 
}); 

function handleSuccess1() {
	$('#confirm-submit').modal('toggle'); 
 $('.top-right').notify({
	    message: { text: 'Building Added Successfully' }
	  }).show();
	location.reload();
}
function handleError1() {
	$('#confirm-submit').modal('toggle');
	
	$('.top-right').notify({
		   message: { text: 'Error..Building Not Added..' }
	  }).show();
	
}  
*/