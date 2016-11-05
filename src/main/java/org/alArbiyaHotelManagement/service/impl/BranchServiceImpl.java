package org.alArbiyaHotelManagement.service.impl;

 
import java.util.Set;

import org.alArbiyaHotelManagement.model.Branch;
 
 
 
import org.alArbiyaHotelManagement.repository.BranchRepository;
import org.alArbiyaHotelManagement.service.BranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BranchServiceImpl implements BranchService {
	
	@Autowired 
	private BranchRepository branchRepository;
	
	@Override
	public Branch addBranch(Branch branch) {
		
		if(branch.getBranchStatus()==null) {
			branch.setBranchStatus("DISABLED");
		}
		
		return branchRepository.addBranch(branch);
	}
	
	@Override
	public Set<Branch> getAllBranch() {
		return branchRepository.getAllBranch();
	}

	@Override
	public Branch deleteBranch() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Branch editBranch(Branch branch) {

		if(branch.getBranchStatus()==null) {
			branch.setBranchStatus("DISABLED");
		}
	 
		return branchRepository.editBranch(branch);
	}
	 
}
