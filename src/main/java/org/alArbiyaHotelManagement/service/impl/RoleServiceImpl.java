package org.alArbiyaHotelManagement.service.impl;

import java.util.List;

import org.alArbiyaHotelManagement.model.Role;
import org.alArbiyaHotelManagement.repository.RoleRepository;
import org.alArbiyaHotelManagement.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	RoleRepository roleRepository;

	@Override
	public Role addRole(Role role) {
		// TODO Auto-generated method stub
		return roleRepository.addRole(role);
	}

	@Override
	public List<Role> getAllRole() {
		// TODO Auto-generated method stub
		return roleRepository.getAllRole();
	}

	@Override
	public Role getRole(int id) {
		// TODO Auto-generated method stub
		return roleRepository.getRole(id);
	}
	
 

}
