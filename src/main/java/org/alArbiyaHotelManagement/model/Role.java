package org.alArbiyaHotelManagement.model;

import java.util.List;
 
import javax.persistence.Column;
import javax.persistence.Entity;
 
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
 
import javax.persistence.ManyToMany;
import javax.persistence.Table;
   

import org.springframework.security.core.GrantedAuthority;

 
@Entity
@Table(name="ROLES")
public class Role implements GrantedAuthority{
     
    /**
	 * 
	 */
	private static final long serialVersionUID = 1595427597866726092L;

	@Id
    @GeneratedValue
    @Column(name="ROLE_ID")
    private long id;
     
    @Column(name="ROLE")
    private String role;
      
    @ManyToMany(mappedBy = "roles")
    private List<User> userRoles;
 /*
	@ManyToMany(mappedBy = "permission")
   private Set<Role> roles; 
*/
	public long getId() {
        return id;
    }
 
    public void setId(long id) {
        this.id = id;
    }
 
    public String getRole() {
        return role;
    }
 
    public void setRole(String role) {
        this.role = role;
    }
 
   public List<User> getUserRoles() {
        return userRoles;
    }
 
    public void setUserRoles(List<User> userRoles) {
        this.userRoles = userRoles;
    } 
    @Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return role;
	}

 
}
     