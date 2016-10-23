package org.alArbiyaHotelManagement.repository;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.IngredientCategory;

public interface IngredientRepository {
	public Ingredient addIngredient();
	public Ingredient editIngredient();
	public Set<IngredientCategory> getAllUnitWithCategory();
}
