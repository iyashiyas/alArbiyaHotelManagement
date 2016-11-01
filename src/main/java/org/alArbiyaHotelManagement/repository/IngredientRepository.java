package org.alArbiyaHotelManagement.repository;

import java.util.List;

import org.alArbiyaHotelManagement.model.Ingredient;
  
public interface IngredientRepository {
	public Ingredient addIngredient(Ingredient ingredient);
	public Ingredient editIngredient(Ingredient ingredient);
	public List<Ingredient> getAllIngredienttWithCategory(String categoryCode);
}
