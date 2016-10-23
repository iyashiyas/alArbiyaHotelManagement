package org.alArbiyaHotelManagement.service.impl;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.IngredientCategory;
import org.alArbiyaHotelManagement.repository.IngredientRepository;
import org.alArbiyaHotelManagement.service.IngredientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IngredientServiceImpl implements IngredientService {
	
	@Autowired
	private IngredientRepository ingredientRepository;
	public Ingredient addIngredient() {
		return null;
	}
	
	public Ingredient editIngredient() {
		return null;
	}

	@Override
	public Set<IngredientCategory> getAllUnitWithCategory() {
		return ingredientRepository.getAllUnitWithCategory();
	}
}
