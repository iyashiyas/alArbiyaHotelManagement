package org.alArbiyaHotelManagement.repository.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.alArbiyaHotelManagement.enums.Status;
import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.IngredientCategory;
import org.alArbiyaHotelManagement.repository.IngredientRepository;
import org.springframework.stereotype.Repository;

@Repository
public class IngredientRepositoryImpl implements IngredientRepository{
	
	@PersistenceContext
	EntityManager entityManager;
	
	public Ingredient addIngredient() {
		return null;
	}
	
	public Ingredient editIngredient() {
		return null;
	}

	@Override
	public Set<IngredientCategory> getAllUnitWithCategory() {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<IngredientCategory> query = criteriaBuilder.createQuery(IngredientCategory.class);
		Root<IngredientCategory> ingredientCategoryRoot = query.from(IngredientCategory.class);
		Join<IngredientCategory, Ingredient> joinIngredient = ingredientCategoryRoot.join("ingredients");
		
		List<Predicate> conditions = new ArrayList<Predicate>();
		conditions.add(criteriaBuilder.equal(ingredientCategoryRoot.get("categoryStatus"), Status.ACTIVE));
		conditions.add(criteriaBuilder.equal(joinIngredient.get("ingredientStatus"), Status.ACTIVE));
		
		TypedQuery<IngredientCategory> typedQuery = entityManager.createQuery(query
		        .select(ingredientCategoryRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return new HashSet<IngredientCategory>(typedQuery.getResultList());
	}
}
