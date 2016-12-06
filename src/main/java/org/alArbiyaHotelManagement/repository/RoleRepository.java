package org.alArbiyaHotelManagement.repository;

import java.util.List;
 

import org.alArbiyaHotelManagement.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long>{

	public Role addRole(Role role);
    
	public List<Role> getAllRole();

	/*public Role getRole(int id);*/
}
