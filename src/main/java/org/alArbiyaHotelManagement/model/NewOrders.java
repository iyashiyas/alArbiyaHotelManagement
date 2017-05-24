package org.alArbiyaHotelManagement.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/*@Entity
@Table(name="NEW_ORDERS")*/
public class NewOrders {

	@Id @GeneratedValue
	@Column(name="ORDER_ID")
	private long id;
	
	@Column(name="TOTAL_AMOUNT") 
	private float totalAmount;
	
    @OneToMany(mappedBy = "newOrders",cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true)
    private List<NewOrderDetails> newOrderDetails;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public float getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(float totalAmount) {
		this.totalAmount = totalAmount;
	}

	public List<NewOrderDetails> getNewOrderDetails() {
		return newOrderDetails;
	}

	public void setNewOrderDetails(List<NewOrderDetails> newOrderDetails) {
		this.newOrderDetails = newOrderDetails;
	}
	
}
