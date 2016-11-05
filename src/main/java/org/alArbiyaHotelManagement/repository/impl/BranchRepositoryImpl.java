package org.alArbiyaHotelManagement.repository.impl;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.alArbiyaHotelManagement.model.Branch;
 
import org.alArbiyaHotelManagement.repository.BranchRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

 
@Repository
@Transactional
public class BranchRepositoryImpl implements BranchRepository{
	@PersistenceContext
	EntityManager entityManager;
	
	public Branch addBranch(Branch branch) {
		entityManager.persist(branch);
		return branch;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Branch> getAllBranch() {
		Query query = entityManager.createQuery("SELECT bran from Branch bran", Branch.class);
		return query.getResultList();
	}

	@Override
	public Branch editBranch(Branch branch) {
		System.out.println("branch id"+branch.getId());
		entityManager.merge(branch);
		return branch;
	}

	@Override
	public Branch deleteBranch(Branch branch) {
		return null;
	}
	
	 
	 
}
