 $(function () {
    $(document).on('click', 'button[data-dismiss]', function (e) {
  location.reload();
})}); 
$( document ).ready(function() {
	
	$("#unitStatus").change(function() {
		$("#unitStatus").val("ENABLE");
		if(!this.checked){
		   $("#unitStatus").val("DISABLE");
		} 
	})
	 
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
		
		var $unitLanguageSize = $("#unitLanguageSize").val()	
		for (i = 0; i < $unitLanguageSize-1; i++) { 
			var controlForm = $('.editControls:first');
		    var $currentEntry = $('.editEntry:first').clone();
		    $currentEntry.find("select").attr('name', 'unitLanguages['+ parseInt(i+1) +'].id')
		    $currentEntry.find("input").attr('name', 'unitLanguages['+ parseInt(i+1) +'].unitLanguageName')
		    var newEntry = $($currentEntry).appendTo(controlForm);
		     
		} 
		
		
		
		var $row = $(this).parent('tr')
		
		for (i = 0; i < $unitLanguageSize; i++) {
			$("select[name='unitLanguages\\["+i+"\\].id']").val($row.find($('td.unitLanguageId'+i+'')).attr('value'))
			$("input[name='unitLanguages\\["+i+"\\].unitLanguageName']").val($row.find($('td.unitLanguageName'+i+'')).attr('value'))
		}
		$('#confirm-Edit').find("select[name='unitCategory']").val($row.find(".unitCategory").text())
		$('#confirm-Edit').find("#id").val($row.find(".id").text())
		$('#confirm-Edit').find("#unitName").val($row.find(".unitName").text())
		$('#confirm-Edit').find("#measurementUnit").val($row.find(".measurementUnit").text())
		$('#confirm-Edit').find("#unitStatus").val($row.find(".unitStatus").text())
		if($row.find(".unitStatus").text()=="ENABLE" || $row.find(".unitStatus").text()=="ENABLED") {
			$('#confirm-Edit').find("#unitStatus").prop('checked',true)
		} else {
			$('#confirm-Edit').find("#unitStatus").prop('checked',false)
		}
		$('#confirm-Edit').find("#unitDescription").val($row.find(".unitDescription").text())
		
		$('#confirm-Edit').modal({
		    backdrop: 'static',
		    keyboard: true,
		    show: true});
	});
	
	/*$( "#confirm-EditForm" ).on('submit', function(e){
		event.preventDefault();
		var $form = $( this ),
		url = $form.attr( "action" );
		
		$.ajax({
		    type : 'POST',
		    url : url,
		    data : $form.serialize(),
			success: handleSuccess
		})
	  
	});*/
	
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
	location.reload();
}  