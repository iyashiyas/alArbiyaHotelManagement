package org.alArbiyaHotelManagement.repository;

import java.util.List;
 
import org.alArbiyaHotelManagement.model.Role;

public interface RoleRepository {

	public Role addRole(Role role);
    
	public List<Role> getAllRole();
}
