package org.alArbiyaHotelManagement.repository.impl;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitLanguage;
import org.alArbiyaHotelManagement.repository.UnitRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UnitRepositoryImpl implements UnitRepository{
	@PersistenceContext
	EntityManager entityManager;
	
	public Unit addUnit(Unit unit) {
		this.entityManager.persist(unit);
		for(UnitLanguage unitLanguage: unit.getUnitLanguages()) {
			TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
			Language language = query.setParameter("languageId", unitLanguage.getId()).getSingleResult();
			unitLanguage.setLanguage(language);
			unitLanguage.setUnit(unit);
			this.entityManager.merge(unitLanguage);
		}
		return unit;
	}
	public Unit editUnit(Unit unit) {
		List<UnitLanguage> unitLanguages = new ArrayList<UnitLanguage>();
		for(UnitLanguage unitLanguage: unit.getUnitLanguages()) {
			TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
			Language language = query.setParameter("languageId", unitLanguage.getLanguage().getId()).getSingleResult();
			unitLanguage.setLanguage(language);
			unitLanguage.setUnit(unit);
			unitLanguages.add(unitLanguage);
		}
		entityManager.merge(unit);
		return unit;
	}
	public Set<Unit> getAllUnitWithCategory(String categoryCode) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Unit> query = criteriaBuilder.createQuery(Unit.class);
		Root<Unit> unitRoot = query.from(Unit.class);
		//Join<UnitCategory, Unit> joinUnit = unitCategoryRoot.join("units");
		
		List<Predicate> conditions = new ArrayList<Predicate>();
		categoryCode = (categoryCode == null || categoryCode == "" ) ? "GRL" : categoryCode;
		
		conditions.add(criteriaBuilder.equal(unitRoot.get("unitCategory"), categoryCode ));
		//conditions.add(criteriaBuilder.equal(joinUnit.get("unitStatus"), Status.ACTIVE.name()));
		
		TypedQuery<Unit> typedQuery = entityManager.createQuery(query
		        .select(unitRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return new HashSet<Unit>(typedQuery.getResultList());
	}
	@Override
	public void disableUnit(long id, String status) {
		Query updateQuery = entityManager.createQuery("UPDATE Unit SET unitStatus = :status where id = :id ");
		updateQuery.setParameter("status", status);
		updateQuery.setParameter("id", id);
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
	}
	 
}
