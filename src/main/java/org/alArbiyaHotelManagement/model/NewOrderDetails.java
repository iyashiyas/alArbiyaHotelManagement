package org.alArbiyaHotelManagement.model;
 
 
import javax.persistence.Column;
import javax.persistence.Entity;
 
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
 
import javax.persistence.OneToOne;
import javax.persistence.Table;
 
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name="NEW_ORDER_DETAILS")
public class NewOrderDetails {

	@Id @GeneratedValue
	@Column(name="ORDER_ID")
	private long id;
	
	@Column(name="AMOUNT") 
	private float amount;
	 
	@Column(name="QUANTITY") 
	private int quantity;
	
	@JsonManagedReference
	@OneToOne
	@JoinColumn(name="SERVICE_ITEM_ID", nullable=true)
	private Product product;
	 
	@JsonIgnore
	@ManyToOne  
    private Orders orders;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	 
	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public boolean isEmpty() {
		return (this.getProduct() == null);
	}

}
