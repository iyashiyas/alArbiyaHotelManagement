package org.alArbiyaHotelManagement.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="USERS")
public class User {
     
    @Id
    @GeneratedValue
    @Column(name="USER_ID")
    private Integer id;
     
    @Column(name="USER_NAME")
    private String userName;
     
    @Column(name="PASSWORD")
    private String password;
     
    @OneToOne(cascade=CascadeType.ALL)
    @JoinTable(name="USER_ROLES",
        joinColumns = {@JoinColumn(name="USER_ID", referencedColumnName="USER_ID")},
        inverseJoinColumns = {@JoinColumn(name="ROLE_ID", referencedColumnName="ROLE_ID")}
    )
    private Role role;
 
    public Integer getId() {
        return id;
    }
 
    public void setId(Integer id) {
        this.id = id;
    }
 
    public String getUserName() {
        return userName;
    }
 
    public void setUserName(String userName) {
        this.userName = userName;
    }
 
    public String getPassword() {
        return userName;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
 
    public Role getRole() {
        return role;
    }
 
    public void setRole(Role role) {
        this.role = role;
    }   
 
}
