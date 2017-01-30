$('#submit').click(function() {
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	var $form = $('.submitEditLanguage');
	var id = $form.find('#id').val(); 
	var csrf=$form.find("#secuirtyId").val();
	$.ajax({
	    type : 'POST',
	    url : '/alArbiyaHotelManagement/order/acceptOrder',
	    data : {id:id, status:status },
	    beforeSend: function(xhr) {
            // here it is
            xhr.setRequestHeader(header, token);
        },
		success: handleSuccess,
		error:handleError
	}); 
}); 


$('#submit').click(function() {
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	var $form = $('.submitEditLanguage');
	var id = $form.find('#id').val(); 
	var csrf=$form.find("#secuirtyId").val();
	$.ajax({
	    type : 'POST',
	    url : '/alArbiyaHotelManagement/order/readyForDelivery',
	    data : {id:id, status:status },
	    beforeSend: function(xhr) {
            // here it is
            xhr.setRequestHeader(header, token);
        },
		success: handleSuccess,
		error:handleError
	});
	
}); 
 
$('#submit').click(function() {
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	
	var $form = $('.submitEditLanguage');
	var id = $form.find('#id').val(); 
	var csrf=$form.find("#secuirtyId").val();
	$.ajax({
	    type : 'POST',
	    url : '/alArbiyaHotelManagement/order/delivered',
	    data : {id:id, status:status },
	    beforeSend: function(xhr) {
            // here it is
            xhr.setRequestHeader(header, token);
        },
		success: handleSuccess,
		error:handleError
	});
	
}); 