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

import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.repository.UnitRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UnitRepositoryImpl implements UnitRepository{
	@PersistenceContext
	EntityManager entityManager;
	
	public Unit addUnit(Unit unit) {
		entityManager.persist(unit);
		return unit;
	}
	public Unit editUnit() {
		return null;
	}
	public Set<Unit> getAllUnitWithCategory(String categoryCode) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Unit> query = criteriaBuilder.createQuery(Unit.class);
		Root<Unit> unitRoot = query.from(Unit.class);
		//Join<UnitCategory, Unit> joinUnit = unitCategoryRoot.join("units");
		
		List<Predicate> conditions = new ArrayList<Predicate>();
		categoryCode = (categoryCode != null || categoryCode == "" ) ? "GRL" : categoryCode;
		conditions.add(criteriaBuilder.equal(unitRoot.get("unitCategory"), categoryCode ));
		//conditions.add(criteriaBuilder.equal(joinUnit.get("unitStatus"), Status.ACTIVE.name()));
		
		TypedQuery<Unit> typedQuery = entityManager.createQuery(query
		        .select(unitRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return new HashSet<Unit>(typedQuery.getResultList());
	}
	
	
}
