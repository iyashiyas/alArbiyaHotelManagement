$('#submitBtn').click(function() {
	console.log("coming");
	var $form = $(this).parent('form');
	$('.editLanguageForm').removeClass('submitEditLanguage');
	$form.addClass('submitEditLanguage');
});

$('#submit').click(function() {
	var $form = $('.submitEditLanguage');
	var id = $form.find('#id').val();
	var status = $form.find('#status').val();
	console.log("status --->"+status);
	$.ajax({
	    type : 'POST',
	    url : '/alArbiyaHotelManagement/language/editLanguage',
	    data : {id:id, status:status },
		success: handleSuccess
	});
	
}); 

function handleSuccess() {
	$('#confirm-submit').modal('toggle');
	
	$(".successMessage").show();
    setTimeout(function() {
    	$(".successMessage").hide();
    }, 5000);
}