$( document ).ready(function() {
	
	$('#confirm-Edit').modal('hide');
	
//	$( "#addUnitForm" ).submit(function( event ) {
//		event.preventDefault();
//		var $form = $( this ),
//		url = $form.attr( "action" );
//		
//		$.ajax({
//		    type : 'POST',
//		    url : url,
//		    form : $form.serialize(),
//			success: handleSuccess
//		})
//		  
//	});
	
	$('.unitEdit').click(function() {
		var $row = $(this).parent('tr')
		$('#confirm-Edit').find("#id").val($row.find(".id").text())
		$('#confirm-Edit').find("#unitName").val($row.find(".unitName").text())
		$('#confirm-Edit').find("#measurementUnit").val($row.find(".measurementUnit").text())
		$('#confirm-Edit').find("#unitStatus").val($row.find(".unitStatus").text())
		$('#confirm-Edit').find("#unitDescription").val($row.find(".unitDescription").text())
		
		$('#confirm-Edit').modal('show');
	});
	
	$( "#confirm-EditForm" ).on('submit', function(e){
		event.preventDefault();
		var $form = $( this ),
		url = $form.attr( "action" );
		
		$.ajax({
		    type : 'POST',
		    url : url,
		    data : $form.serialize(),
			success: handleSuccess
		})
	  
	});
	
	$(".disableUnitButton").click(function() {
		$('#disableUnitFormWrapper .disableUnit').find("#id").val($(this).attr("unitId"))
		$('#disableUnitFormWrapper .disableUnit').find("#status").val($(this).val())
		$('#disableUnitFormWrapper').modal('show');
	})
	
	$(".disableUnitFormButton").click(function() {
		var $form = $('#disableUnitFormWrapper .disableUnit')
	    var $url = $form.attr( "action" );
		
		var posting = $.post( $url, $form.serialize() );
		
		posting.done(function( data ) {
			$('#disableUnitFormWrapper').modal('hide');
		  });
	}) 
});

function handleSuccess() {
	$('#confirm-Edit').modal('hide');
}  