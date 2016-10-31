package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.alArbiyaHotelManagement.model.Ingredient;
 
import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.service.IngredientService;
import org.alArbiyaHotelManagement.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/ingredient")
public class IngredientController {
	
	@Autowired IngredientService ingredientService;
	@Autowired LanguageService languageService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String showIngredient(Model model, @RequestParam(required=false) String categoryCode) {
		Set<Ingredient> ingredientsWithCategory = ingredientService.getAllIngredienttWithCategory(categoryCode);
		Set<Language> languages = languageService.getEnableLanguages();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("ingredientWithCategory", ingredientsWithCategory);
		attributes.put("languages", languages);
		attributes.put("newIngredient", new Ingredient());
		 model.addAllAttributes(attributes);	
		return "ingredient/ingredient";
	}
   
	@RequestMapping(value="/addIngredient", method=RequestMethod.POST)
	public String addIngredient(@ModelAttribute Ingredient ingredient) {
		System.out.println("ingredient"+ingredient);
		ingredientService.addIngredient(ingredient);
		return "redirect:/ingredient";
	}
	
	@RequestMapping(value="/editingredient", method=RequestMethod.POST)
	 public void editIngredient(@ModelAttribute Ingredient ingredient) {
		ingredientService.editIngredient(ingredient);
	  }
}
