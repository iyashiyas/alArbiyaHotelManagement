package org.alArbiyaHotelManagement.utils;

import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.enums.HotelServicesChildCategory;
import org.alArbiyaHotelManagement.enums.HotelServicesEnum;
import org.alArbiyaHotelManagement.enums.HotelServicesValues;
import org.alArbiyaHotelManagement.model.HotelServices;
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
	
	public HotelServices toHotelService(CoffeeShop coffeeShop) {
		HotelServices hotelServices = new HotelServices();
		hotelServices.setServiceName(HotelServicesEnum.COFFEESHOP.name());
		hotelServices.setServiceStatus(coffeeShop.getStatus());
		
		HotelServicesGroup parentServicesGroup = new HotelServicesGroup();
		parentServicesGroup.setServiceGroupName(coffeeShop.getCategory());
		
		HotelServicesGroup childServicesGroup = new HotelServicesGroup();
		childServicesGroup.setServiceGroupName(HotelServicesChildCategory.GENERAL.name());
		childServicesGroup.setHotelServicesParentGroup(parentServicesGroup);
		
		List<HotelServicesValue> hotelServicesValues = new ArrayList<HotelServicesValue>();
		int i=0;
		for(Long ingredentId: coffeeShop.getIngredientId()) {
			HotelServicesValue hotelServicesValue = new HotelServicesValue();
			hotelServicesValue.setFieldName(HotelServicesValues.INGREDIENTID.name());
			hotelServicesValue.setFieldValue(ingredentId.toString());
			hotelServicesValue.setFieldName(HotelServicesValues.INGREDIENTVALUE.name());
			hotelServicesValue.setFieldValue(coffeeShop.getIngredientPrice().get(i).toString());
			hotelServicesValue.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValue);
			
			i++;
		}
		
		i=0;
		for(Long unitId: coffeeShop.getUnitId()) {
			HotelServicesValue hotelServicesValue = new HotelServicesValue();
			hotelServicesValue.setFieldName(HotelServicesValues.UNITID.name());
			hotelServicesValue.setFieldValue(unitId.toString());
			hotelServicesValue.setFieldName(HotelServicesValues.UNITPRICE.name());
			hotelServicesValue.setFieldValue(coffeeShop.getUnitPrice().get(i).toString());
			hotelServicesValue.setHotelServicesGroup(childServicesGroup);
			hotelServicesValues.add(hotelServicesValue);
			
			i++;
		}
		childServicesGroup.setHotelServicesValues(hotelServicesValues);
		
		List<HotelServicesGroup> childHotelServicesGroups = new ArrayList<HotelServicesGroup>();
		childHotelServicesGroups.add(childServicesGroup);
		parentServicesGroup.setHotelServiceChildGroups(childHotelServicesGroups);
		
		List<ServiceLanguage> serviceLanguages = new ArrayList<ServiceLanguage>();
		i=0;
		for(Long unitId: coffeeShop.getLanguageId()) {
			ServiceLanguage serviceLanguage = new ServiceLanguage();
			serviceLanguage.setHotelServices(hotelServices);
			serviceLanguage.setHotelServiceLanguageName(coffeeShop.getLangageName().get(i).toString());
			serviceLanguage.setLanguage(null);
			serviceLanguages.add(serviceLanguage);
			i++;
		}
		hotelServices.setServiceLanguages(serviceLanguages);
		return hotelServices;
	}

}
