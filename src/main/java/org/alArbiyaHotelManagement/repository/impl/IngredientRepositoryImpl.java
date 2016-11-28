package org.alArbiyaHotelManagement.repository.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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
			if(!ingredientLanguage.isEmpty()) {
				TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
				Language language = query.setParameter("languageId", ingredientLanguage.getLanguage().getId()).getSingleResult();
				ingredientLanguage.setLanguage(language);
				ingredientLanguage.setIngredient(ingredient);
				this.entityManager.merge(ingredientLanguage);
			}
		}
		return ingredient;
	}
	
	public Ingredient editIngredient(Ingredient ingredient) {
		deleteChild(ingredient);
		List<IngredientLanguage> ingredientLanguages = new ArrayList<IngredientLanguage>();
		for(IngredientLanguage ingredientLanguage: ingredient.getIngredientLanguages()) {
			if(!ingredientLanguage.isEmpty()) {
				TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
				Language language = query.setParameter("languageId", ingredientLanguage.getLanguage().getId()).getSingleResult();
				ingredientLanguage.setLanguage(language);
				ingredientLanguage.setIngredient(ingredient);
				ingredientLanguages.add(ingredientLanguage);
			}
		}
		ingredient.setIngredientLanguages(ingredientLanguages);
		entityManager.merge(ingredient);
		return ingredient;
	 }
 
	private void deleteChild(Ingredient ingredient) {
		Query query = entityManager.createQuery("SELECT ingredient from Ingredient ingredient where id =:id", Ingredient.class);
		query.setParameter("id", ingredient.getId());
		ingredient = (Ingredient) query.getResultList().get(0);
		for(IngredientLanguage language: ingredient.getIngredientLanguages()) {
			entityManager.remove(language);
		}
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

	@SuppressWarnings("unchecked")
	@Override
	public List<Ingredient> getAllIngredients() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT ingredient from Ingredient ingredient where ingredientStatus='ENABLE' order by id", Ingredient.class);
		return query.getResultList(); 
	}
 
}
