package org.alArbiyaHotelManagement.repository;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.IngredientCategory;

public interface IngredientRepository {
	public Ingredient addIngredient(Ingredient ingredient);
	public Ingredient editIngredient(Ingredient ingredient);
	public Set<Ingredient> getAllIngredienttWithCategory(String categoryCode);
}
