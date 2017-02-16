 package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.IngredientCategory;
  
public interface IngredientService {
	public Ingredient addIngredient(Ingredient ingredient);
	public Ingredient editIngredient(Ingredient ingredient);
	public List<Ingredient> getAllIngredienttWithCategory(String categoryCode);
	
	public List<Ingredient> getAllIngredients();
	public List<IngredientCategory> ingredientCategories();
	public IngredientCategory addIngredientCategory(IngredientCategory ingredientCategory);
	
	
}
