package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Branch;


public interface BranchService {
	public Branch addBranch(Branch branch);
	public List<Branch> getAllBranch();
	public Branch deleteBranch();
	public Branch editBranch(Branch branch);
}
