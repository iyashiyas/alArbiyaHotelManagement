package org.alArbiyaHotelManagement.model;

 
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

 
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name="PRODUCT")
public class Product {

	@Id @GeneratedValue 
	@Column(name="SERVICE_ITEM_ID")
	private long id;
	
	@Column(name="SERVICE_ITEM_STATUS")
	private String serviceItemStatus;
	
	@Column(name="SERVICE_ITEM_NAME")
	private String serviceItemName;
	
	@Column(name="SERVICE_ITEM_CODE")
	private String serviceItemCode;
	
	@Column(name="SERVICE_ITEM_DESCRIPTION")
	private String serviceItemDescription;
	
	@Column(name="AMOUNT")
	private float amount;
	
	@Column(name="DISCOUNT")
	private float discount;
	
	@Transient
	private CommonsMultipartFile multipartFile;
	
	@Column(name="IMAGE_URL_NAME")
	private String imageUrlName;
	
	@Column(name="BARCODEIMAGE_URL_NAME")
	private String barCodeImageUrlName;
	
	@JsonIgnore
	@OneToMany(mappedBy="hotelServicesItem", cascade={CascadeType.MERGE}, fetch=FetchType.EAGER, orphanRemoval=true) 
	private List<ServiceLanguage> serviceLanguages;
	
	@JsonIgnore
	@ManyToOne 
	@JoinColumn(name="SERVICE_CATEGORY_ID", nullable=true)
	private HotelServicesCategory hotelServicesCategory;
	
	@JsonIgnore
	@OneToOne
	@JoinColumn(name="SERVICE_ITEM_CATEGORY_ID", nullable=true)
	private ServiceItemCategory serviceItemCategory;
	 
	 
	public ServiceItemCategory getServiceItemCategory() {
		return serviceItemCategory;
	}

	public void setServiceItemCategory(ServiceItemCategory serviceItemCategory) {
		this.serviceItemCategory = serviceItemCategory;
	}
	
	public CommonsMultipartFile getMultipartFile() {
		return multipartFile;
	}

	public void setMultipartFile(CommonsMultipartFile multipartFile) {
		this.multipartFile = multipartFile;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getServiceItemStatus() {
		return serviceItemStatus;
	}

	public void setServiceItemStatus(String serviceItemStatus) {
		this.serviceItemStatus = serviceItemStatus;
	}

	public String getServiceItemName() {
		return serviceItemName;
	}

	public void setServiceItemName(String serviceItemName) {
		this.serviceItemName = serviceItemName;
	}

	public String getServiceItemCode() {
		return serviceItemCode;
	}

	public void setServiceItemCode(String serviceItemCode) {
		this.serviceItemCode = serviceItemCode;
	}

	public String getServiceItemDescription() {
		return serviceItemDescription;
	}

	public void setServiceItemDescription(String serviceItemDescription) {
		this.serviceItemDescription = serviceItemDescription;
	}

 

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public String getImageUrlName() {
		return imageUrlName;
	}

	public void setImageUrlName(String imageUrlName) {
		this.imageUrlName = imageUrlName;
	}

	public String getBarCodeImageUrlName() {
		return barCodeImageUrlName;
	}

	public void setBarCodeImageUrlName(String barCodeImageUrlName) {
		this.barCodeImageUrlName = barCodeImageUrlName;
	}

	public List<ServiceLanguage> getServiceLanguages() {
		return serviceLanguages;
	}
	
	public void addServiceLanguage(ServiceLanguage serviceLanguage) {
        this.serviceLanguages.add(serviceLanguage);
        if (serviceLanguage.getHotelServicesItem() != this) {
        	serviceLanguage.setHotelServicesItem(this);
        }
    }

	public void setServiceLanguages(List<ServiceLanguage> serviceLanguages) {
		this.serviceLanguages = serviceLanguages;
	}

	public HotelServicesCategory getHotelServicesCategory() {
		return hotelServicesCategory;
	}

	public void setHotelServicesCategory(HotelServicesCategory hotelServicesCategory) {
		this.hotelServicesCategory = hotelServicesCategory;
	}

	public float getDiscount() {
		return discount;
	}

	public void setDiscount(float discount) {
		this.discount = discount;
	}

	
}
