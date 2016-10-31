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
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

 
import org.alArbiyaHotelManagement.model.Ingredient;
 
  import org.alArbiyaHotelManagement.repository.IngredientRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class IngredientRepositoryImpl implements IngredientRepository{
	 @PersistenceContext
	EntityManager entityManager;
	
	public Ingredient addIngredient(Ingredient ingredient) {
		entityManager.persist(ingredient);
		return ingredient;
	}
	
	public Ingredient editIngredient(Ingredient ingredient) {
		entityManager.merge(ingredient);
		return ingredient;
		 
	}
 
	@Override
	public Set<Ingredient> getAllIngredienttWithCategory(String categoryCode) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Ingredient> query = criteriaBuilder.createQuery(Ingredient.class);
		Root<Ingredient> ingredientRoot = query.from(Ingredient.class);
		//Join<UnitCategory, Unit> joinUnit = unitCategoryRoot.join("units");
		
		List<Predicate> conditions = new ArrayList<Predicate>();
		categoryCode = (categoryCode == null || categoryCode == "" ) ? "SAUCE" : categoryCode;
		
		conditions.add(criteriaBuilder.equal(ingredientRoot.get("ingredientCategory"), categoryCode ));
		//conditions.add(criteriaBuilder.equal(joinUnit.get("unitStatus"), Status.ACTIVE.name()));
		
		TypedQuery<Ingredient> typedQuery = entityManager.createQuery(query
		        .select(ingredientRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return new HashSet<Ingredient>(typedQuery.getResultList());
	}

	 
}
