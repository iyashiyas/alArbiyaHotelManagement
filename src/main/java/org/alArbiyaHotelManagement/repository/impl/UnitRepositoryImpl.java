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

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitCategory;
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
			if(!unitLanguage.isEmpty()) {
				TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
				Language language = query.setParameter("languageId", unitLanguage.getLanguage().getId()).getSingleResult();
				unitLanguage.setLanguage(language);
				unitLanguage.setUnit(unit);
				this.entityManager.merge(unitLanguage);
			}
		}
		return unit;
	}
	public Unit editUnit(Unit unit) {
		deleteChild(unit);
		
		List<UnitLanguage> unitLanguages = new ArrayList<UnitLanguage>();
		for(UnitLanguage unitLanguage: unit.getUnitLanguages()) {
			if(!unitLanguage.isEmpty()) {
				TypedQuery<Language> query = this.entityManager.createQuery("SELECT lang from Language lang WHERE lang.id=:languageId", Language.class);
				Language language = query.setParameter("languageId", unitLanguage.getLanguage().getId()).getSingleResult();
				unitLanguage.setLanguage(language);
				unitLanguage.setUnit(unit);
				unitLanguages.add(unitLanguage);
			}
		}
		unit.setUnitLanguages(unitLanguages);
		entityManager.merge(unit);
		return unit;
	}
	
	private void deleteChild(Unit unit) {
		Query query = entityManager.createQuery("SELECT unit from Unit unit where id =:id", Unit.class);
		query.setParameter("id", unit.getId());
		unit = (Unit) query.getResultList().get(0);
		for(UnitLanguage language: unit.getUnitLanguages()) {
			entityManager.remove(language);
		}
	}
	
	public List<Unit> getAllUnitWithCategory(String categoryCode) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Unit> query = criteriaBuilder.createQuery(Unit.class);
		Root<Unit> unitRoot = query.from(Unit.class);
		//Join<UnitCategory, Unit> joinUnit = unitCategoryRoot.join("units");
		
		List<Predicate> conditions = new ArrayList<Predicate>();
		categoryCode = (categoryCode == null || categoryCode == "" ) ? "1" : categoryCode;
		
		 conditions.add(criteriaBuilder.equal(unitRoot.get("unitCategories").get("id"), categoryCode ));
		//conditions.add(criteriaBuilder.equal(joinUnit.get("unitStatus"), Status.ACTIVE.name()));
		
		query.orderBy(criteriaBuilder.asc(unitRoot.get("id")));
		TypedQuery<Unit> typedQuery = entityManager.createQuery(query
		        .select(unitRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return typedQuery.getResultList();
	}
	@Override
	public void disableUnit(long id, String status) {
		Query updateQuery = entityManager.createQuery("UPDATE Unit SET unitStatus = :status where id = :id ");
		updateQuery.setParameter("status", status);
		updateQuery.setParameter("id", id);
		entityManager.joinTransaction();
		updateQuery.executeUpdate();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Unit> getAllUnits() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT unit from Unit unit where unitStatus='ENABLE' order by id", Unit.class);
		return query.getResultList(); 
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<UnitCategory> UnitCategories() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("SELECT unitcategory from UnitCategory unitcategory where unitCategoryStatus='ENABLE' order by id", UnitCategory.class);
		return query.getResultList(); 
	}
	@Override
	public UnitCategory addUnitCategory(UnitCategory unitCategory) {
		// TODO Auto-generated method stub
		entityManager.persist(unitCategory);
		return unitCategory;
	}
	 
	 
}
