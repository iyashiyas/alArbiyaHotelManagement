 package org.alArbiyaHotelManagement.service;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Ingredient;
  
public interface IngredientService {
	public Ingredient addIngredient(Ingredient ingredient);
	public Ingredient editIngredient(Ingredient ingredient);
	public Set<Ingredient> getAllIngredienttWithCategory(String categoryCode);
}
