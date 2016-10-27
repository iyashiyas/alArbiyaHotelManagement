$( document ).ready(function() {
	$( "#addUnitForm" ).submit(function( event ) {
		event.preventDefault();
		var $form = $( this ),
		url = $form.attr( "action" );
		
		$.ajax({
		    type : 'POST',
		    url : url,
		    form : $form.serialize(),
			success: handleSuccess
		});
		  
	});
});

function handleSuccess() {
	alert("Done")
	
}  