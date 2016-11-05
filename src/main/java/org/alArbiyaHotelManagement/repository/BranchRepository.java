package org.alArbiyaHotelManagement.repository;

 
import java.util.Set;

import org.alArbiyaHotelManagement.model.Branch;
 

public interface BranchRepository {
	public Branch addBranch(Branch branch);
	
	public Set<Branch> getAllBranch();
	
	public Branch editBranch(Branch branch);
	public Branch deleteBranch(Branch branch);
}
