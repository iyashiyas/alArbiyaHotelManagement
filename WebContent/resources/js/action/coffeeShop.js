$(document).ready(function() {
	$('select').removeAttr('multiple');
})

$(function() {
	var coffeeLangugaeCount = 0;
	$(document).on('click','.coffeShopLanguage-btn-add',function(e) {
		coffeeLangugaeCount++
				e.preventDefault();

				var controlForm = $('.controls-coffeeLanguage:first'), currentEntry = $(this)
						.parents('.entry-coffeeLanguage:first'), newEntry = $(
						currentEntry.clone()).appendTo(controlForm);

				newEntry.find('input').val('');
				newEntry.find('input').attr('name',"coffeeShopLanguages[" + coffeeLangugaeCount+ "].coffeeShopLanguageName")
				newEntry.find('select').attr('name',"coffeeShopLanguages[" + coffeeLangugaeCount + "].coffeeShoplanguage.id")
				controlForm.find('.entry-coffeeLanguage:not(:last) .coffeShopLanguage-btn-add')
					.removeClass('coffeShopLanguage-btn-add')
					.addClass('coffeShopLanguage-btn-remove')
					.removeClass('btn-success')
					.addClass('btn-danger')
					.html('<span class="glyphicon glyphicon-minus"></span>');
			}).on('click', '.coffeShopLanguage-btn-remove', function(e) {
		$(this).parents('.entry-coffeeLanguage:first').remove();
		e.preventDefault();
		return false;
	});
});


$(function() {
	var coffeeLangugaeCount = 0;
	$(document).on('click','.coffeShopIngredients-btn-add',function(e) {
		coffeeLangugaeCount++
				e.preventDefault();

				var controlForm = $('.controls-coffeeIngredients:first'), currentEntry = $(this)
						.parents('.entry-coffeeIngredients:first'), newEntry = $(
						currentEntry.clone()).appendTo(controlForm);

				newEntry.find('input').val('');
				newEntry.find('input').attr('name',"coffeeShopIngredients[" + coffeeLangugaeCount+ "].coffeeShopIngredientName")
				newEntry.find('select').attr('name',"coffeeShopIngredients[" + coffeeLangugaeCount + "].coffeeShopIngredient.id")
				controlForm.find('.entry-coffeeIngredients:not(:last) .coffeShopIngredients-btn-add')
					.removeClass('coffeShopIngredients-btn-add')
					.addClass('coffeShopIngredients-btn-remove')
					.removeClass('btn-success')
					.addClass('btn-danger')
					.html('<span class="glyphicon glyphicon-minus"></span>');
			}).on('click', '.coffeShopIngredients-btn-remove', function(e) {
		$(this).parents('.entry-coffeeIngredients:first').remove();
		e.preventDefault();
		return false;
	});
});


$(function() {
	var coffeeLangugaeCount = 0;
	$(document).on('click','.coffeShopUnits-btn-add',function(e) {
		coffeeLangugaeCount++
				e.preventDefault();

				var controlForm = $('.controls-coffeeShopUnits:first'), currentEntry = $(this)
						.parents('.entry-coffeeShopUnits:first'), newEntry = $(
						currentEntry.clone()).appendTo(controlForm);

				newEntry.find('input').val('');
				newEntry.find('input').attr('name',"coffeeShopUnits[" + coffeeLangugaeCount+ "].coffeeShopUnitName")
				newEntry.find('select').attr('name',"coffeeShopUnits[" + coffeeLangugaeCount + "].coffeeShopUnit.id")
				controlForm.find('.entry-coffeeShopUnits:not(:last) .coffeShopUnits-btn-add')
					.removeClass('coffeShopUnits-btn-add')
					.addClass('coffeShopUnits-btn-remove')
					.removeClass('btn-success')
					.addClass('btn-danger')
					.html('<span class="glyphicon glyphicon-minus"></span>');
			}).on('click', '.coffeShopUnits-btn-remove', function(e) {
		$(this).parents('.entry-coffeeShopUnits:first').remove();
		e.preventDefault();
		return false;
	});
});


