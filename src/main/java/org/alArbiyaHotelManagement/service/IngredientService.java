 package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Ingredient;
  
public interface IngredientService {
	public Ingredient addIngredient(Ingredient ingredient);
	public Ingredient editIngredient(Ingredient ingredient);
	public List<Ingredient> getAllIngredienttWithCategory(String categoryCode);
	
	public List<Ingredient> getAllIngredients();
	
	
}
