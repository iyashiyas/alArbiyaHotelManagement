package org.alArbiyaHotelManagement.web;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.IngredientCategory;
import org.alArbiyaHotelManagement.service.IngredientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/ingredient")
public class IngredientController {
	
	@Autowired
	private IngredientService ingredientService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String showIngredient(Model model) {
		Set<IngredientCategory> ingredientsWithCategory = ingredientService.getAllUnitWithCategory();
		model.addAttribute("ingredientsWithCategory", ingredientsWithCategory);
		return "ingredient/ingredient";
	}

	public Ingredient addIngredient() {
		return null;
	}
	
	public Ingredient editIngredient() {
		return null;
	}
}
