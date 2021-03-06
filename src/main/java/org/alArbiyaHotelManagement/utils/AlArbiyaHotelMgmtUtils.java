package org.alArbiyaHotelManagement.utils;

import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.persistence.EntityManager;
 

import org.alArbiyaHotelManagement.dto.CarRental;
import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.dto.CoffeeeShopIngredientHelper;
import org.alArbiyaHotelManagement.dto.CoffeeeShopLanguageHelper;
import org.alArbiyaHotelManagement.dto.CoffeeeShopUnitHelper;
import org.alArbiyaHotelManagement.dto.Laundry;
import org.alArbiyaHotelManagement.dto.Restaurant;
import org.alArbiyaHotelManagement.enums.HotelServicesChildCategory;
import org.alArbiyaHotelManagement.enums.HotelServicesValues;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.HotelServicesGroup;
import org.alArbiyaHotelManagement.model.HotelServicesValue;
 
import org.alArbiyaHotelManagement.model.ServiceLanguage;
 

public class AlArbiyaHotelMgmtUtils {
	
	static final String validCharacters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	static final SecureRandom secureRandom = new SecureRandom();
	  static EntityManager entityManager;
	
	public static Date getDateForString(String date) throws ParseException {
		DateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		return sdf.parse(date);
	}
	
	public static int generatePassword() {
	    Random r = new Random( System.currentTimeMillis() );
	    return ((1 + r.nextInt(2)) * 10000 + r.nextInt(10000));
	}
	
	public static String generateRandomString(){
	   StringBuilder sb = new StringBuilder( 10 );
	   for( int i = 0; i < 10; i++ ) 
	      sb.append( validCharacters.charAt( secureRandom.nextInt(validCharacters.length()) ) );
	   return sb.toString();
	}

	public static String getMemberId(String firstName, String email) {
		final String memberShipCharacter = "012345"+firstName.toUpperCase()+email.toUpperCase();
		StringBuilder sb = new StringBuilder( 6 );
		for( int i = 0; i < 6; i++ ) 
			sb.append( memberShipCharacter.charAt( secureRandom.nextInt(memberShipCharacter.length()) ) );
		return sb.toString();
	}
	
	public static HotelServicesItem toHotelService(CoffeeShop coffeeShop, HotelServicesCategory hotelServicesCategory) {
		/*HotelServicesItem hotelServicesItem = new HotelServicesItem();
		hotelServicesItem.setServiceItemName(coffeeShop.getItemName());
		hotelServicesItem.setServiceItemDescription(coffeeShop.getDescription());
		hotelServicesItem.setServiceItemCode(coffeeShop.getServiceItemCode());
		hotelServicesItem.setHotelServicesCategory(hotelServicesCategory);
		if(coffeeShop.getStatus()==null)
		{
		coffeeShop.setStatus("DISABLED");
		}
		hotelServicesItem.setServiceItemStatus(coffeeShop.getStatus());
		
		HotelServicesGroup parentServicesGroup = new HotelServicesGroup();
		parentServicesGroup.setServiceGroupName(coffeeShop.getCategory());
		parentServicesGroup.setHotelServicesItem(hotelServicesItem);
		
		HotelServicesGroup childServicesGroup = new HotelServicesGroup();
		childServicesGroup.setServiceGroupName(HotelServicesChildCategory.GENERAL.name());
		
		List<HotelServicesValue> hotelServicesValues = new ArrayList<HotelServicesValue>();
		int i=0;
		for(CoffeeeShopIngredientHelper ingredientHelper: coffeeShop.getIngredientHelper()) {
			HotelServicesValue hotelServicesValuOne = new HotelServicesValue();
			hotelServicesValuOne.setFieldName(HotelServicesValues.INGREDIENTID.name());
			hotelServicesValuOne.setFieldValue(ingredientHelper.getIngredientId().toString());
			hotelServicesValuOne.setItemPrice(coffeeShop.getIngredientPrice().get(i).toString());
			hotelServicesValuOne.setExternalId(ingredientHelper.getIngredientId().toString());
			hotelServicesValuOne.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValuOne);
			i++;
		}
		
		i=0;
		for(CoffeeeShopUnitHelper unitHelper: coffeeShop.getUnitHelper()) {
			HotelServicesValue hotelServicesValueOne = new HotelServicesValue();
			hotelServicesValueOne.setFieldName(HotelServicesValues.UNITID.name());
			hotelServicesValueOne.setFieldValue(unitHelper.getUnitId().toString());
			hotelServicesValueOne.setItemPrice(coffeeShop.getUnitPrice().get(i).toString());
			hotelServicesValueOne.setExternalId(unitHelper.getUnitId().toString());
			hotelServicesValueOne.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValueOne);
			
			i++;
		}
		childServicesGroup.setHotelServicesValues(hotelServicesValues);
		
		List<HotelServicesGroup> childHotelServicesGroups = new ArrayList<HotelServicesGroup>();
		childHotelServicesGroups.add(childServicesGroup);
		parentServicesGroup.setHotelServiceChildGroups(childHotelServicesGroups);
		childServicesGroup.setHotelServicesParentGroup(parentServicesGroup);
		
		List<ServiceLanguage> serviceLanguages = new ArrayList<ServiceLanguage>();
		i=0;
		for(CoffeeeShopLanguageHelper languageHelper: coffeeShop.getLanguageHelper()) {
			ServiceLanguage serviceLanguage = new ServiceLanguage();
			serviceLanguage.setHotelServicesItem(hotelServicesItem); 
			serviceLanguage.setHotelServiceLanguageName(languageHelper.getLangageName());
			   
			serviceLanguage.setLanguage(languageHelper.getLanguageId().get(i));
			serviceLanguages.add(serviceLanguage);
			i++;
		}
		hotelServicesItem.setServiceLanguages(serviceLanguages);
		
		List<HotelServicesGroup> hotelServiceParentGroups = new ArrayList<HotelServicesGroup>();
		hotelServiceParentGroups.add(parentServicesGroup);
		hotelServicesItem.setHotelServiceParentGroups(hotelServiceParentGroups);
		return hotelServicesItem;*/
		return null;
	}

	 
	public static HotelServicesItem toHotelServiceRestaurant(Restaurant restaurant, HotelServicesCategory hotelServicesCategory) {
		/*HotelServicesItem hotelServicesItem = new HotelServicesItem();
		hotelServicesItem.setServiceItemName(restaurant.getItemName());
		hotelServicesItem.setServiceItemCode(restaurant.getServiceItemCode());
		hotelServicesItem.setServiceItemDescription(restaurant.getDescription());
		hotelServicesItem.setHotelServicesCategory(hotelServicesCategory);
	 
		if(restaurant.getStatus()==null)
		{
			restaurant.setStatus("DISABLED");
		}
		
		hotelServicesItem.setServiceItemStatus(restaurant.getStatus());
	 
		
		HotelServicesGroup parentServicesGroup = new HotelServicesGroup();
		parentServicesGroup.setServiceGroupName(restaurant.getCategory());
		parentServicesGroup.setHotelServicesItem(hotelServicesItem);
		
		HotelServicesGroup childServicesGroup = new HotelServicesGroup();
		childServicesGroup.setServiceGroupName(HotelServicesChildCategory.GENERAL.name());
		
		List<HotelServicesValue> hotelServicesValues = new ArrayList<HotelServicesValue>();
		int i=0;
		for(CoffeeeShopIngredientHelper ingredientHelper: restaurant.getIngredientHelper()) {
			HotelServicesValue hotelServicesValuOne = new HotelServicesValue();
			hotelServicesValuOne.setFieldName(HotelServicesValues.INGREDIENTID.name());
			hotelServicesValuOne.setFieldValue(ingredientHelper.getIngredientId().toString());
			hotelServicesValuOne.setExternalId(ingredientHelper.getIngredientId().toString());
			hotelServicesValuOne.setItemPrice(restaurant.getIngredientPrice().get(i).toString());
			
			hotelServicesValuOne.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValuOne);
			i++;
		}
		
		i=0;
		for(CoffeeeShopUnitHelper unitHelper: restaurant.getUnitHelper()) {
			HotelServicesValue hotelServicesValueOne = new HotelServicesValue();
			hotelServicesValueOne.setFieldName(HotelServicesValues.UNITID.name());
			hotelServicesValueOne.setFieldValue(unitHelper.getUnitId().toString());
			hotelServicesValueOne.setExternalId(unitHelper.getUnitId().toString());
			hotelServicesValueOne.setItemPrice(restaurant.getUnitPrice().get(i).toString());
			
			hotelServicesValueOne.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValueOne);
			
			i++;
		}
		childServicesGroup.setHotelServicesValues(hotelServicesValues);
		
		List<HotelServicesGroup> childHotelServicesGroups = new ArrayList<HotelServicesGroup>();
		childHotelServicesGroups.add(childServicesGroup);
		parentServicesGroup.setHotelServiceChildGroups(childHotelServicesGroups);
		childServicesGroup.setHotelServicesParentGroup(parentServicesGroup);
		
		List<ServiceLanguage> serviceLanguages = new ArrayList<ServiceLanguage>();
		i=0;
		for(CoffeeeShopLanguageHelper languageHelper: restaurant.getLanguageHelper()) {
			ServiceLanguage serviceLanguage = new ServiceLanguage();
			serviceLanguage.setHotelServicesItem(hotelServicesItem);
			serviceLanguage.setHotelServiceLanguageName(languageHelper.getLangageName());
			serviceLanguage.setLanguage(null);
			serviceLanguages.add(serviceLanguage);
			i++;
		}
		hotelServicesItem.setServiceLanguages(serviceLanguages);
		
		List<HotelServicesGroup> hotelServiceParentGroups = new ArrayList<HotelServicesGroup>();
		hotelServiceParentGroups.add(parentServicesGroup);
		hotelServicesItem.setHotelServiceParentGroups(hotelServiceParentGroups);
		return hotelServicesItem;*/
		return null;
	}
	  
	public static HotelServicesItem toHotelServiceCareRental(CarRental carRental, HotelServicesCategory hotelServicesCategory) {
		/*HotelServicesItem hotelServicesItem = new HotelServicesItem();
		hotelServicesItem.setServiceItemName(carRental.getItemName());
		hotelServicesItem.setServiceItemCode(carRental.getServiceItemCode());
		hotelServicesItem.setServiceItemDescription(carRental.getDescription());
		hotelServicesItem.setHotelServicesCategory(hotelServicesCategory);
		if(carRental.getStatus()==null)
		{
			carRental.setStatus("DISABLED");
		}
		hotelServicesItem.setServiceItemStatus(carRental.getStatus());
	 
		
		HotelServicesGroup parentServicesGroup = new HotelServicesGroup();
		parentServicesGroup.setServiceGroupName(carRental.getCategory());
		parentServicesGroup.setHotelServicesItem(hotelServicesItem);
		
		HotelServicesGroup childServicesGroup = new HotelServicesGroup();
		childServicesGroup.setServiceGroupName(HotelServicesChildCategory.GENERAL.name());
		
		List<HotelServicesValue> hotelServicesValues = new ArrayList<HotelServicesValue>();
		int i=0;
		for(CoffeeeShopUnitHelper unitHelper: carRental.getUnitHelper()) {
			HotelServicesValue hotelServicesValueOne = new HotelServicesValue();
			hotelServicesValueOne.setFieldName(HotelServicesValues.UNITID.name());
			hotelServicesValueOne.setFieldValue(unitHelper.getUnitId().toString());
			hotelServicesValueOne.setExternalId(unitHelper.getUnitId().toString());
			hotelServicesValueOne.setItemPrice(carRental.getUnitPrice().get(i).toString());
			
			hotelServicesValueOne.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValueOne);
			
			i++;
		}
		childServicesGroup.setHotelServicesValues(hotelServicesValues);
		
		List<HotelServicesGroup> childHotelServicesGroups = new ArrayList<HotelServicesGroup>();
		childHotelServicesGroups.add(childServicesGroup);
		parentServicesGroup.setHotelServiceChildGroups(childHotelServicesGroups);
		childServicesGroup.setHotelServicesParentGroup(parentServicesGroup);
		
		List<ServiceLanguage> serviceLanguages = new ArrayList<ServiceLanguage>();
		i=0;
		for(CoffeeeShopLanguageHelper languageHelper: carRental.getLanguageHelper()) {
			ServiceLanguage serviceLanguage = new ServiceLanguage();
			serviceLanguage.setHotelServicesItem(hotelServicesItem);
			serviceLanguage.setHotelServiceLanguageName(languageHelper.getLangageName());
			serviceLanguage.setLanguage(null);
			serviceLanguages.add(serviceLanguage);
			i++;
		}
		hotelServicesItem.setServiceLanguages(serviceLanguages);
		
		List<HotelServicesGroup> hotelServiceParentGroups = new ArrayList<HotelServicesGroup>();
		hotelServiceParentGroups.add(parentServicesGroup);
		hotelServicesItem.setHotelServiceParentGroups(hotelServiceParentGroups);
		return hotelServicesItem;*/
		return null;
	}
 
	
	public static HotelServicesItem toHotelServiceLaundry(Laundry laundry, HotelServicesCategory hotelServicesCategory) {
		/*HotelServicesItem hotelServicesItem = new HotelServicesItem();
		hotelServicesItem.setServiceItemName(laundry.getItemName());
		hotelServicesItem.setServiceItemDescription(laundry.getDescription());
		hotelServicesItem.setServiceItemCode(laundry.getServiceItemCode());
		hotelServicesItem.setHotelServicesCategory(hotelServicesCategory);
		if(laundry.getStatus()==null)
		{
			laundry.setStatus("DISABLED");
		}
		hotelServicesItem.setServiceItemStatus(laundry.getStatus());
	 
		
		HotelServicesGroup parentServicesGroup = new HotelServicesGroup();
		parentServicesGroup.setServiceGroupName(laundry.getCategory());
		parentServicesGroup.setHotelServicesItem(hotelServicesItem);
		
		HotelServicesGroup childServicesGroup = new HotelServicesGroup();
		childServicesGroup.setServiceGroupName(HotelServicesChildCategory.GENERAL.name());
		childServicesGroup.setHotelServicesItem(hotelServicesItem);
		
		List<HotelServicesValue> hotelServicesValues = new ArrayList<HotelServicesValue>();
		int i=0;
		for(CoffeeeShopUnitHelper unitHelper: laundry.getUnitHelper()) {
			HotelServicesValue hotelServicesValueOne = new HotelServicesValue();
			hotelServicesValueOne.setFieldName(HotelServicesValues.UNITID.name());
			hotelServicesValueOne.setFieldValue(unitHelper.getUnitId().toString());
			hotelServicesValueOne.setExternalId(unitHelper.getUnitId().toString());
			hotelServicesValueOne.setItemPrice(laundry.getUnitPrice().get(i).toString());
			
			hotelServicesValueOne.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValueOne);
			
			i++;
		}
		childServicesGroup.setHotelServicesValues(hotelServicesValues);
		
		List<HotelServicesGroup> childHotelServicesGroups = new ArrayList<HotelServicesGroup>();
		childHotelServicesGroups.add(childServicesGroup);
		parentServicesGroup.setHotelServiceChildGroups(childHotelServicesGroups);
		childServicesGroup.setHotelServicesParentGroup(parentServicesGroup);
		
		List<ServiceLanguage> serviceLanguages = new ArrayList<ServiceLanguage>();
		i=0;
		for(CoffeeeShopLanguageHelper languageHelper: laundry.getLanguageHelper()) {
			ServiceLanguage serviceLanguage = new ServiceLanguage();
			serviceLanguage.setHotelServicesItem(hotelServicesItem);
			serviceLanguage.setHotelServiceLanguageName(languageHelper.getLangageName());
			serviceLanguage.setLanguage(null);
			serviceLanguages.add(serviceLanguage);
			i++;
		}
		hotelServicesItem.setServiceLanguages(serviceLanguages);
		
		List<HotelServicesGroup> hotelServiceParentGroups = new ArrayList<HotelServicesGroup>();
		hotelServiceParentGroups.add(parentServicesGroup);
		hotelServicesItem.setHotelServiceParentGroups(hotelServiceParentGroups);
		return hotelServicesItem;
	}*/
	// Image Upload
		return null;
	 
}
}