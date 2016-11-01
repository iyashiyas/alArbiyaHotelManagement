/* $('#confirm-Edit').on('hidden.bs.modal', function () {
  location.reload();
})*/

$(function () {
    $(document).on('click', 'button[data-dismiss]', function (e) {
  location.reload();
})}); 
$( document ).ready(function() {
	
	$("#ingredientStatus").change(function() {
		$("#ingredientStatus").val("ENABLE");
		if(!this.checked){
		   $("#ingredientStatus").val("DISABLE");
		} 
	})
	 $('#EditUnit-Modal').modal('hide');
	
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
		
		var $unitLanguageSize = $(".unitLanguageSize").val()	
		for (i = 0; i < $unitLanguageSize-1; i++) { 
			var controlForm = $('.editControls:first');
		    var $currentEntry = $('.editEntry:first').clone();
		    $currentEntry.find("select").attr('name', 'unitLanguages['+ parseInt(i+1) +'].id')
		    $currentEntry.find("input").attr('name', 'unitLanguages['+ parseInt(i+1) +'].unitLanguageName')
		    var newEntry = $($currentEntry).appendTo(controlForm);
		     
		} 
		 
		
		var $row = $(this).parent('tr')
		
		for (i = 0; i < $unitLanguageSize; i++) {
			$("select[name='unitLanguages\\["+i+"\\].language.id']").val($row.find($('td.unitLanguageLanguageId'+i+'')).attr('value'))
			$("input[name='unitLanguages\\["+i+"\\].id']").val($row.find($('td.unitLanguageId'+i+'')).attr('value'))
			$("input[name='unitLanguages\\["+i+"\\].unitLanguageName']").val($row.find($('td.unitLanguageName'+i+'')).attr('value'))
		}
		$('#EditUnit-Modal').find("select[name='unitCategory']").val($row.find(".unitCategory").text())
		$('#EditUnit-Modal').find("#id").val($row.find(".id").text())
		$('#EditUnit-Modal').find("#unitName").val($row.find(".unitName").text())
		$('#EditUnit-Modal').find("#measurementUnit").val($row.find(".measurementUnit").text())
		$('#EditUnit-Modal').find("#unitStatus").val($row.find(".unitStatus").text())
		if($row.find(".unitStatus").text()=="ENABLE" || $row.find(".unitStatus").text()=="ENABLED") {
			$('#EditUnit-Modal').find("#unitStatus").prop('checked',true)
		} else {
			$('#EditUnit-Modal').find("#unitStatus").prop('checked',false)
		}
		$('#EditUnit-Modal').find("#unitDescription").val($row.find(".unitDescription").text())
		
		$('#EditUnit-Modal').modal({
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
	$('#EditUnit-Modal').modal('hide');
	location.reload();
}  

 