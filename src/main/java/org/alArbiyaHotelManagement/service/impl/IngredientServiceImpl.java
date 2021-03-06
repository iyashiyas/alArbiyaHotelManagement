package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

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
	
	public Ingredient addIngredient(Ingredient ingredient) {
		 if(ingredient.getIngredientStatus()==null) {
			ingredient.setIngredientStatus("DISABLED");
		}
		 return ingredientRepository.addIngredient(ingredient);
	}
	
	public Ingredient editIngredient(Ingredient ingredient) {
		 if(ingredient.getIngredientStatus()==null) {
				ingredient.setIngredientStatus("DISABLED");
			}
		return ingredientRepository.editIngredient(ingredient);
	}

	@Override
	public List<Ingredient> getAllIngredienttWithCategory(String categoryCode) {
		return ingredientRepository.getAllIngredienttWithCategory(categoryCode);
	}

	@Override
	public List<Ingredient> getAllIngredients() {
		// TODO Auto-generated method stub
		return ingredientRepository.getAllIngredients();
	}

	@Override
	public List<IngredientCategory> ingredientCategories() {
		// TODO Auto-generated method stub
		return ingredientRepository.ingredientCategories();
	}

	@Override
	public IngredientCategory addIngredientCategory(IngredientCategory ingredientCategory) {
		if(ingredientCategory.getIngredientCategoryStatus()==null) {
			ingredientCategory.setIngredientCategoryStatus("DISABLED");
		}
	return ingredientRepository.addIngredientCategory(ingredientCategory);
	}
}
