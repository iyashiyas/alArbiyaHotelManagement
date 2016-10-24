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
import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.model.UnitCategory;
import org.alArbiyaHotelManagement.repository.UnitRepository;
import org.springframework.stereotype.Repository;

@Repository
public class UnitRepositoryImpl implements UnitRepository{
	@PersistenceContext
	EntityManager entityManager;
	
	public Unit addUnit() {
		return null;
	}
	public Unit editUnit() {
		return null;
	}
	
	@Override
	public Set<UnitCategory> getAllUnitWithCategory(String categoryCode) {
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<UnitCategory> query = criteriaBuilder.createQuery(UnitCategory.class);
		Root<UnitCategory> unitCategoryRoot = query.from(UnitCategory.class);
		Join<UnitCategory, Unit> joinUnit = unitCategoryRoot.join("units");
		
		List<Predicate> conditions = new ArrayList<Predicate>();
		categoryCode = (categoryCode != null || categoryCode == "" ) ? "GN" : categoryCode;
		conditions.add(criteriaBuilder.equal(unitCategoryRoot.get("categoryCode"), categoryCode ));
		conditions.add(criteriaBuilder.equal(joinUnit.get("unitStatus"), Status.ACTIVE.name()));
		
		TypedQuery<UnitCategory> typedQuery = entityManager.createQuery(query
		        .select(unitCategoryRoot)
		        .where(conditions.toArray(new Predicate[] {}))
		);
		return new HashSet<UnitCategory>(typedQuery.getResultList());
	}
}
