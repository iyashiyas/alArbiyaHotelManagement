package org.alArbiyaHotelManagement.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

 


import org.alArbiyaHotelManagement.model.Ingredient;
 
import org.alArbiyaHotelManagement.model.IngredientLanguage;
import org.alArbiyaHotelManagement.model.Language;
 
import org.alArbiyaHotelManagement.repository.IngredientRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class IngredientRepositoryImpl implements IngredientRepository{
	 @PersistenceContext
	EntityManager entityManager;
	
	public Ingredient addIngredient(Ingredient ingredient) {
		this.entityManager.persist(ingredient);
		
		for(IngredientLanguage ingredientLanguage: ingredient.getIngredientLanguages()) {
			TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
			Language language = query.setParameter("languageId", ingredientLanguage.getId()).getSingleResult();
			ingredientLanguage.setLanguage(language);
			ingredientLanguage.setIngredient(ingredient);
			this.entityManager.merge(ingredientLanguage);
		}
		 return ingredient;
	}
	
	public Ingredient editIngredient(Ingredient ingredient) {
		entityManager.merge(ingredient);
		return ingredient;
	 }
 
	@Override
	public List<Ingredient> getAllIngredienttWithCategory(String categoryCode) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Ingredient> query = criteriaBuilder.createQuery(Ingredient.class);
		Root<Ingredient> ingredientRoot = query.from(Ingredient.class);
		 
		List<Predicate> conditions = new ArrayList<Predicate>();
		categoryCode = (categoryCode == null || categoryCode == "" ) ? "SAUCE" : categoryCode;
		
		conditions.add(criteriaBuilder.equal(ingredientRoot.get("ingredientCategory"), categoryCode ));
	 	 TypedQuery<Ingredient> typedQuery = entityManager.createQuery(query
		        .select(ingredientRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return typedQuery.getResultList();
	}
 
}
