$(function() {
	var unitLangugaeCount = 0;
	$(document).on('click','.btn-add',function(e) {
				unitLangugaeCount++
				e.preventDefault();

				var controlForm = $('.controls:first'), currentEntry = $(this)
						.parents('.entry:first'), newEntry = $(
						currentEntry.clone()).appendTo(controlForm);

				newEntry.find('input').val('');
				newEntry.find('input').attr('name',"serviceItemCategoryLanguage[" + unitLangugaeCount+ "].serviceItemCategoryLanguageName")
				newEntry.find('select').attr('name',"serviceItemCategoryLanguage[" + unitLangugaeCount + "].language.id")
				controlForm.find('.entry:not(:last) .btn-add')
					.removeClass('btn-add')
					.addClass('btn-remove')
					.removeClass('btn-success')
					.addClass('btn-danger')
					.html('<span class="glyphicon glyphicon-minus"></span>');
			}).on('click', '.btn-remove', function(e) {
		$(this).parents('.entry:first').remove();
		e.preventDefault();
		return false;
	});
}); 