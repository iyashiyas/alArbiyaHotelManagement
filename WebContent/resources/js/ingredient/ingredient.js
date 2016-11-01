$('#confirm-Edit').on('hidden.bs.modal', function () {
  location.reload();
})
$( document ).ready(function() {
	
	$("#ingredientStatus").change(function() {
		$("#ingredientStatus").val("ENABLE");
		if(!this.checked){
		   $("#ingredientStatus").val("DISABLE");
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
	
	$('.ingredientEdit').click(function() {
		
		var $ingredientLanguageSize = $(".ingredientLanguageSize").val()	
		for (i = 0; i < $ingredientLanguageSize-1; i++) { 
			var controlForm = $('.editControls:first');
		    var $currentEntry = $('.editEntry:first').clone();
		    $currentEntry.find("select").attr('name', 'ingredientLanguages['+ parseInt(i+1) +'].id')
		    $currentEntry.find("input").attr('name', 'ingredientLanguages['+ parseInt(i+1) +'].ingredientLanguageName')
		    var newEntry = $($currentEntry).appendTo(controlForm);
		     
		} 
		
		
		
		var $row = $(this).parent('tr')
		
		for (i = 0; i < $ingredientLanguageSize; i++) {
			$("select[name='ingredientLanguages\\["+i+"\\].language.id']").val($row.find($('td.ingredientLanguageLanguageId'+i+'')).attr('value'))
			$("input[name='ingredientLanguages\\["+i+"\\].id']").val($row.find($('td.ingredientLanguageId'+i+'')).attr('value'))
			
						$("input[name='ingredientDescription\\["+i+"\\].id']").val($row.find($('td.ingredientDescription'+i+'')).attr('value'))
			
			$("input[name='ingredientLanguages\\["+i+"\\].ingredientLanguageName']").val($row.find($('td.ingredientLanguageName'+i+'')).attr('value'))
		}
		$('#confirm-Edit').find("select[name='ingredientCategory']").val($row.find(".ingredientCategory").text())
		$('#confirm-Edit').find("#id").val($row.find(".id").text())
		$('#confirm-Edit').find("#ingredientName").val($row.find(".ingredientName").text())
 
		$('#confirm-Edit').find("#ingredientStatus").val($row.find(".ingredientStatus").text())
		if($row.find(".ingredientStatus").text()=="ENABLE" || $row.find(".ingredientStatus").text()=="ENABLED") {
			$('#confirm-Edit').find("#ingredientStatus").prop('checked',true)
		} else {
			$('#confirm-Edit').find("#ingredientStatus").prop('checked',false)
		}
		$('#confirm-Edit').find("#ingredientDescription").val($row.find(".ingredientDescription").text())
		
		$('#confirm-Edit').modal({
		     
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
	
	/*$(".disableUnitButton").click(function() {
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
	}) */
});

function handleSuccess() {
	$('#confirm-Edit').modal('hide');
	location.reload();
}  