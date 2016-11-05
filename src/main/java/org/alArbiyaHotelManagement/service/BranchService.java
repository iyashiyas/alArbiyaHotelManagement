package org.alArbiyaHotelManagement.service;

import java.util.Set;

import org.alArbiyaHotelManagement.model.Branch;


public interface BranchService {
	public Branch addBranch(Branch branch);
	public Set<Branch> getAllBranch();
	public Branch deleteBranch();
	public Branch editBranch(Branch branch);
}
