$(document).ready(function() {
	$('select').removeAttr('multiple');
})

$(function() {
	var restaurantLangugaeCount = 0;
	$(document).on('click','.restaurantLanguage-btn-add',function(e) {
		restaurantLangugaeCount++
				e.preventDefault();

				var controlForm = $('.controls-restaurantLanguage:first'), currentEntry = $(this)
						.parents('.entry-restaurantLanguage:first'), newEntry = $(
						currentEntry.clone()).appendTo(controlForm);

				newEntry.find('input').val('');
				newEntry.find('input').attr('name',"languageName[" + restaurantLangugaeCount+ "]")
				newEntry.find('select').attr('name',"languageHelper[" + restaurantLangugaeCount + "].languageId")
				controlForm.find('.entry-restaurantLanguage:not(:last) .restaurantLanguage-btn-add')
					.removeClass('restaurantLanguage-btn-add')
					.addClass('crestaurantLanguage-btn-remove')
					.removeClass('btn-success')
					.addClass('btn-danger')
					.html('<span class="glyphicon glyphicon-minus"></span>');
			}).on('click', '.restaurantLanguage-btn-remove', function(e) {
		$(this).parents('.entry-restaurantLanguage:first').remove();
		e.preventDefault();
		return false;
	});
});