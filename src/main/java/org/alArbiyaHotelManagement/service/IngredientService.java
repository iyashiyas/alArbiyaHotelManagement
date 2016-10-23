package org.alArbiyaHotelManagement.service;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.IngredientCategory;

public interface IngredientService {
	public Ingredient addIngredient();
	public Ingredient editIngredient();
	public Set<IngredientCategory> getAllUnitWithCategory();
}
