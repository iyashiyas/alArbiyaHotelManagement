$( document ).ready(function() {
 
	 $('.buildingEdit').click(function() {
		   
		var $row = $(this).parent('tr')
	  
		$('#editBuilding').find("#id").val($row.find(".id").text())
		$('#editBuilding').find("#buildingName").val($row.find(".buildingName").text())
		$('#editBuilding').find("#buildingCode").val($row.find(".buildingCode").text())
		$('#editBuilding').find("#buildingPhoneNumber").val($row.find(".buildingPhoneNumber").text())
		$('#editBuilding').find("#buildingEmail").val($row.find(".buildingEmail").text())
		$('#editBuilding').find("#buildingTotalFloor").val($row.find(".buildingTotalFloor").text())
		$('#editBuilding').find("#buildingDescription").val($row.find(".buildingDescription").text())
		  
		if($row.find(".branchStatus").text()=="ENABLE" || $row.find(".branchStatus").text()=="ENABLED") {
			$('#editBuilding').find("#buildingStatus").prop('checked',true)
		} else {
			$('#editBuilding').find("#buildingStatus").prop('checked',false)
		}
		 	
		$('#editBuilding').modal({
		    backdrop: 'static',
		    keyboard: true,
		    show: true});
	});
});
	 
function handleSuccess() {
	$('#editBuilding').modal('hide');
	location.reload();
}