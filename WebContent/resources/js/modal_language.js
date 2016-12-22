$('.submitBtn').click(function() {
	var $form = $(this).parent('form');
	$('.editLanguageForm').removeClass('submitEditLanguage');
	$form.addClass('submitEditLanguage');
});

$('#submit').click(function() {
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	var $form = $('.submitEditLanguage');
	var id = $form.find('#id').val();
	var status = $form.find('#status').val();
	var csrf=$form.find("#secuirtyId").val();
	$.ajax({
	    type : 'POST',
	    url : '/alArbiyaHotelManagement/language/editLanguage',
	    data : {id:id, status:status },
	    beforeSend: function(xhr) {
            // here it is
            xhr.setRequestHeader(header, token);
        },
		success: handleSuccess,
		error:handleError
	});
	
}); 

function handleSuccess() {
	$('#confirm-submit').modal('toggle');
	
 $('.top-right').notify({
	    message: { text: 'Language Status Updated Successfully' }
	  }).show(); 

	location.reload();
}  
function handleError() {
	$('#confirm-submit').modal('toggle');
	
	$('.top-right').notify({
	    message: { text: 'Language Status Updation Failed' }
	  }).show();
	
}  
 