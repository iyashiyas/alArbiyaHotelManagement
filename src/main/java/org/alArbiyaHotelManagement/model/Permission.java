package org.alArbiyaHotelManagement.model;
  
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table; 
  
@Entity
@Table(name = "PERMISSION")
public class Permission  { 
	  
	    @Id
	    @GeneratedValue
	    @Column(name="PERMISSION_ID")
	    private long id;
	     
	    @Column(name="PERMISSION")
	    private String permission; 

       /*  @ManyToMany(fetch=FetchType.EAGER)
		   	@JoinTable(name = "PERMISSION_ROLE", joinColumns = @JoinColumn(name = "ROLE_ID", referencedColumnName = "ROLE_ID"), inverseJoinColumns = @JoinColumn(name = "PERMISSION_ID", referencedColumnName = "PERMISSION_ID"))
		   	private Set<Role> roles; 
		   	  
		 public Set<Role> getRoles() {
				return roles;
			}

			public void setRoles(Set<Role> roles) {
				this.roles = roles;
			}*/

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getPermission() {
			return permission;
		}

		public void setPermission(String permission) {
			this.permission = permission;
		}

		 
		
}
