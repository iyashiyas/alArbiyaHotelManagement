$( document ).ready(function() {
 
	 $('.changePassword').click(function() {
		   
		var $row = $(this).parent('tr')
	  
		$('#changePassword').find("#userId").val($row.find(".userId").text())
	 	   
		$('#changePassword').modal({
		    backdrop: 'static',
		    keyboard: true,
		    show: true});
	});
});
	 
function handleSuccess() {
		$('#changePassword').modal('hide');
	location.reload();
}