package org.alArbiyaHotelManagement.repository;

 
import java.util.List;

import org.alArbiyaHotelManagement.model.Branch;

public interface BranchRepository {
	public Branch addBranch(Branch branch);
	public List<Branch> getAllBranch();
	public Branch editBranch(Branch branch);
	public Branch deleteBranch(Branch branch);
}
