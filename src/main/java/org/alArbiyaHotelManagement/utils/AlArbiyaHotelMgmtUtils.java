package org.alArbiyaHotelManagement.utils;

import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.dto.CoffeeeShopIngredientHelper;
import org.alArbiyaHotelManagement.dto.CoffeeeShopLanguageHelper;
import org.alArbiyaHotelManagement.dto.CoffeeeShopUnitHelper;
import org.alArbiyaHotelManagement.enums.HotelServicesChildCategory;
import org.alArbiyaHotelManagement.enums.HotelServicesEnum;
import org.alArbiyaHotelManagement.enums.HotelServicesValues;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.HotelServicesGroup;
import org.alArbiyaHotelManagement.model.HotelServicesValue;
import org.alArbiyaHotelManagement.model.ServiceLanguage;

public class AlArbiyaHotelMgmtUtils {
	
	static final String validCharacters = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	static final SecureRandom secureRandom = new SecureRandom();

	
	public static Date getDateForString(String date) throws ParseException {
		DateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		return sdf.parse(date);
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
	
	public static HotelServicesItem toHotelService(CoffeeShop coffeeShop) {
		HotelServicesItem hotelServicesItem = new HotelServicesItem();
		hotelServicesItem.setServiceName(HotelServicesEnum.COFFEESHOP.name());
		hotelServicesItem.setServiceStatus(coffeeShop.getStatus());
		
		HotelServicesGroup parentServicesGroup = new HotelServicesGroup();
		parentServicesGroup.setServiceGroupName(coffeeShop.getCategory());
		
		HotelServicesGroup childServicesGroup = new HotelServicesGroup();
		childServicesGroup.setServiceGroupName(HotelServicesChildCategory.GENERAL.name());
		childServicesGroup.setHotelServicesItem(hotelServicesItem);
		
		List<HotelServicesValue> hotelServicesValues = new ArrayList<HotelServicesValue>();
		int i=0;
		for(CoffeeeShopIngredientHelper ingredientHelper: coffeeShop.getIngredientHelper()) {
			HotelServicesValue hotelServicesValuOne = new HotelServicesValue();
			hotelServicesValuOne.setFieldName(HotelServicesValues.INGREDIENTID.name());
			hotelServicesValuOne.setFieldValue(ingredientHelper.getIngredientId().toString());
			
			HotelServicesValue hotelServicesValuTwo = new HotelServicesValue();
			hotelServicesValuTwo.setExternalId(ingredientHelper.getIngredientId().toString());
			hotelServicesValuTwo.setFieldName(HotelServicesValues.INGREDIENTPRICE.name());
			hotelServicesValuTwo.setFieldValue(coffeeShop.getIngredientPrice().get(i).toString());
			
			hotelServicesValuOne.setHotelServicesGroup(childServicesGroup);
			hotelServicesValuTwo.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValuOne);
			hotelServicesValues.add(hotelServicesValuTwo);
			
			i++;
		}
		
		i=0;
		for(CoffeeeShopUnitHelper unitHelper: coffeeShop.getUnitHelper()) {
			HotelServicesValue hotelServicesValueOne = new HotelServicesValue();
			hotelServicesValueOne.setFieldName(HotelServicesValues.UNITID.name());
			hotelServicesValueOne.setFieldValue(unitHelper.getUnitId().toString());
			
			HotelServicesValue hotelServicesValueTwo = new HotelServicesValue();
			hotelServicesValueTwo.setExternalId(unitHelper.getUnitId().toString());
			hotelServicesValueTwo.setFieldName(HotelServicesValues.UNITPRICE.name());
			hotelServicesValueTwo.setFieldValue(coffeeShop.getUnitPrice().get(i).toString());
			
			hotelServicesValueOne.setHotelServicesGroup(childServicesGroup);
			hotelServicesValueTwo.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValueOne);
			hotelServicesValues.add(hotelServicesValueTwo);
			
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
			serviceLanguage.setLanguage(null);
			serviceLanguages.add(serviceLanguage);
			i++;
		}
		hotelServicesItem.setServiceLanguages(serviceLanguages);
		
		List<HotelServicesGroup> hotelServiceParentGroups = new ArrayList<HotelServicesGroup>();
		hotelServiceParentGroups.add(parentServicesGroup);
		hotelServicesItem.setHotelServiceParentGroups(hotelServiceParentGroups);
		return hotelServicesItem;
	}

}
