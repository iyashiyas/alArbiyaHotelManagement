package org.alArbiyaHotelManagement.service;

import java.util.List;

import org.alArbiyaHotelManagement.model.Role;

public interface RoleService {

	public Role addRole(Role role);

	public List<Role> getAllRole();
	/* public Role getRole(int id);*/
}
