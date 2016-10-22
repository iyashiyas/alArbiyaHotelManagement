package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.Ingredient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/ingredient")
public class IngredientController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showIngredient() {
		return "ingredient/ingredient";
	}

	public Ingredient addIngredient() {
		return null;
	}
	
	public Ingredient editIngredient() {
		return null;
	}
}
