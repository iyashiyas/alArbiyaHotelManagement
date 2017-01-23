package org.alArbiyaHotelManagement.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.dto.CarRental;
import org.alArbiyaHotelManagement.dto.CoffeeShop;
import org.alArbiyaHotelManagement.dto.CoffeeeShopIngredientHelper;
import org.alArbiyaHotelManagement.dto.CoffeeeShopLanguageHelper;
import org.alArbiyaHotelManagement.dto.CoffeeeShopUnitHelper;
import org.alArbiyaHotelManagement.dto.Laundry;
import org.alArbiyaHotelManagement.dto.Restaurant;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.service.ActionService;
import org.alArbiyaHotelManagement.service.BranchService;
import org.alArbiyaHotelManagement.service.IngredientService;
import org.alArbiyaHotelManagement.service.LanguageService;
import org.alArbiyaHotelManagement.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/action")
public class ActionController {

	@Autowired
	BranchService branchService;
	@Autowired
	ActionService actionService;
	@Autowired
	LanguageService languageService;
	@Autowired
	UnitService unitService;
	@Autowired
	IngredientService ingredientService;

	
	@RequestMapping(method = RequestMethod.GET)
	public String showAction(
			Model model,
			@RequestParam(required = false) org.alArbiyaHotelManagement.enums.Action actionCode) {
		String actionCde = (actionCode == null || actionCode.name() == "") ? "action"
				: actionCode.getActionName();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("coffeShop", new CoffeeShop());
		model.addAllAttributes(attributes);
		return "action/" + actionCde;
	}

	@RequestMapping(value = "/showCoffeeShop", method = RequestMethod.GET)
	public String showCoffeeShop(Model model) {
		List<Language> languages = languageService.getEnableLanguages();
		List<Unit> units = unitService.getAllUnits();
		List<Ingredient> ingredients = ingredientService.getAllIngredients();

		List<HotelServicesItem> getAllcoffeeShops = actionService
				.getAllCoffeShopItems();

		Map<String, Object> attributes = new HashMap<String, Object>();
		CoffeeShop coffeeShop = new CoffeeShop();

		CoffeeeShopLanguageHelper coffeeeShopLanguageHelper = null;
		CoffeeeShopUnitHelper coffeeeShopUnitHelper = null;
		CoffeeeShopIngredientHelper coffeeeShopIngredientHelper = null;

		for (Language language : languages) {
			coffeeeShopLanguageHelper = new CoffeeeShopLanguageHelper();
			coffeeeShopLanguageHelper.setLanguageId(language.getId());
			coffeeeShopLanguageHelper
					.setLangageName(language.getLanguageName());
			coffeeShop.getLanguageHelper().add(coffeeeShopLanguageHelper);
		}

		for (Unit unit : units) {
			coffeeeShopUnitHelper = new CoffeeeShopUnitHelper();
			coffeeeShopUnitHelper.setUnitId(unit.getId());
			coffeeeShopUnitHelper.setUnitName(unit.getUnitName());
			coffeeShop.getUnitHelper().add(coffeeeShopUnitHelper);
		}

		for (Ingredient ingredient : ingredients) {
			coffeeeShopIngredientHelper = new CoffeeeShopIngredientHelper();
			coffeeeShopIngredientHelper.setIngredientId(ingredient.getId());
			coffeeeShopIngredientHelper.setIngredientName(ingredient
					.getIngredientName());
			coffeeShop.getIngredientHelper().add(coffeeeShopIngredientHelper);
		}
		attributes.put("getAllcoffeeShops", getAllcoffeeShops);
		attributes.put("coffeShop", coffeeShop);
		attributes.put("languageHelper", languages);
		attributes.put("unitHelper", units);
		attributes.put("ingredientHelper", ingredients);
		model.addAllAttributes(attributes);
		return "action/coffee";
	}

	@RequestMapping(value = "/addCoffeShop", method = RequestMethod.POST)
	public String addCoffeShop(@ModelAttribute CoffeeShop coffeeShop) {
		File serverFile = null;
		if (!coffeeShop.getMultipartFile().isEmpty()) {
			try {
				byte[] bytes = coffeeShop.getMultipartFile().getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("user.home");
				File dir = new File(rootPath+File.separator+"coffeeShop");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				serverFile = new File(dir.getAbsolutePath()
						+ File.separator + new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".jpeg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			} catch (Exception e) {
				
			}
		}
		
		actionService.addCoffeeShop(coffeeShop, serverFile);
		return "redirect:/action/showCoffeeShop";
	}

	@RequestMapping(value = "/showRestaurant", method = RequestMethod.GET)
	public String showRestaurant(Model model) {

		List<Language> languages = languageService.getEnableLanguages();
		List<Ingredient> ingredients = ingredientService.getAllIngredients();
		List<Unit> units = unitService.getAllUnits();
		List<HotelServicesItem> getAllRestaurantItems = actionService
				.getAllRestaurantItems();

		Map<String, Object> attributes = new HashMap<String, Object>();

		Restaurant restaurant = new Restaurant();

		CoffeeeShopLanguageHelper coffeeeShopLanguageHelper = null;
		CoffeeeShopIngredientHelper coffeeeShopIngredientHelper = null;
		CoffeeeShopUnitHelper coffeeeShopUnitHelper = null;

		for (Language language : languages) {
			coffeeeShopLanguageHelper = new CoffeeeShopLanguageHelper();
			coffeeeShopLanguageHelper.setLanguageId(language.getId());
			coffeeeShopLanguageHelper
					.setLangageName(language.getLanguageName());
			restaurant.getLanguageHelper().add(coffeeeShopLanguageHelper);
		}

		for (Ingredient ingredient : ingredients) {
			coffeeeShopIngredientHelper = new CoffeeeShopIngredientHelper();
			coffeeeShopIngredientHelper.setIngredientId(ingredient.getId());
			coffeeeShopIngredientHelper.setIngredientName(ingredient
					.getIngredientName());
			restaurant.getIngredientHelper().add(coffeeeShopIngredientHelper);
		}
		for (Unit unit : units) {
			coffeeeShopUnitHelper = new CoffeeeShopUnitHelper();
			coffeeeShopUnitHelper.setUnitId(unit.getId());
			coffeeeShopUnitHelper.setUnitName(unit.getUnitName());
			restaurant.getUnitHelper().add(coffeeeShopUnitHelper);
		}

		attributes.put("restaurant", restaurant);
		attributes.put("ingredientHelper", ingredients);
		attributes.put("unitHelper", units);
		attributes.put("languageHelper", languages);
		attributes.put("getAllRestaurantItems", getAllRestaurantItems);

		model.addAllAttributes(attributes);
		return "action/restaurant";
	}

	@RequestMapping(value = "/addRestaurantItems", method = RequestMethod.POST)
	public String addRestaurantItems(@ModelAttribute Restaurant restaurant) {
		
		File serverFile = null;
		if (!restaurant.getMultipartFile().isEmpty()) {
			try {
				byte[] bytes = restaurant.getMultipartFile().getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("user.home");
				File dir = new File(rootPath+File.separator+"restaurant");
				if (!dir.exists())
					dir.mkdirs(); 
				// Create the file on server
				serverFile = new File(dir.getAbsolutePath()
						+ File.separator + new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".jpeg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			} catch (Exception e) {
				
			}
		} 
		actionService.addRestaurantItems(restaurant,serverFile);
		return "redirect:/action/showRestaurant";
	} 
	@RequestMapping(value = "/showCheckoutAction", method = RequestMethod.GET)
	public String showCheckoutAction(Model model) {
		Map<String, Object> attributes = new HashMap<String, Object>();

		HotelServicesCategory hotelServiceCategory = new HotelServicesCategory();

		attributes.put("hotelServiceCategory", hotelServiceCategory);
		model.addAllAttributes(attributes); 
		return "action/checkout";
	}
    
	@RequestMapping(value = "/updateCheckOutStatus", method = RequestMethod.POST)
	public String updateCheckOutStatus(
			@ModelAttribute HotelServicesCategory hotelServicesCategory) {
		actionService.updateCheckOutStatus(hotelServicesCategory);
		return "redirect:/action/showCheckoutAction";
	}
	 
	
/*	@RequestMapping(value = "/showParkingAction", method = RequestMethod.GET)
	public String showParkingAction(Model model) {
		Map<String, Object> attributes = new HashMap<String, Object>();  
        return "redirect:/showParking";
	}*/ 
	@RequestMapping(value = "/updateParkingStatus", method = RequestMethod.POST)
	public String updateParkingStatus(
			@ModelAttribute HotelServicesCategory hotelServicesCategory) {
		actionService.updateParkingStatus(hotelServicesCategory);
		return "redirect:/showParking";
	}  
	
	@RequestMapping(value = "/showHouseKeepingAction", method = RequestMethod.GET)
	public String showHouseKeepingAction(Model model) {
		Map<String, Object> attributes = new HashMap<String, Object>(); 
		HotelServicesCategory hotelServiceCategory = new HotelServicesCategory();
        attributes.put("hotelServiceCategory", hotelServiceCategory); 
		model.addAllAttributes(attributes);
        return "action/houseKeeping";
	}
	
	@RequestMapping(value = "/updateHouseKeepingStatus", method = RequestMethod.POST)
	public String updateHouseKeepingStatus(
			@ModelAttribute HotelServicesCategory hotelServicesCategory) {
		actionService.updateHouseKeepingStatus(hotelServicesCategory);
		return "redirect:/action/showHouseKeepingAction";
	} 
	 
	@RequestMapping(value = "/showCarRentalAction", method = RequestMethod.GET)
	public String showCarRentalAction(Model model) { 
		
        List<Language> languages = languageService.getEnableLanguages(); 
        List<Unit> units = unitService.getAllUnits();
    	List<HotelServicesItem> getAllCarRentalItems = actionService
				.getAllCarRentalItems();

		Map<String, Object> attributes = new HashMap<String, Object>(); 
		CarRental carRental= new CarRental();
		
		CoffeeeShopLanguageHelper coffeeeShopLanguageHelper = null; 
		CoffeeeShopUnitHelper coffeeeShopUnitHelper = null;
		for (Language language : languages) {
			coffeeeShopLanguageHelper = new CoffeeeShopLanguageHelper();
			coffeeeShopLanguageHelper.setLanguageId(language.getId());
			coffeeeShopLanguageHelper
					.setLangageName(language.getLanguageName());
			
			carRental.getLanguageHelper().add(coffeeeShopLanguageHelper);
		}
		
		for (Unit unit : units) {
			coffeeeShopUnitHelper = new CoffeeeShopUnitHelper();
			coffeeeShopUnitHelper.setUnitId(unit.getId());
			coffeeeShopUnitHelper.setUnitName(unit.getUnitName());
			carRental.getUnitHelper().add(coffeeeShopUnitHelper);
		}
        
		attributes.put("languageHelper", languages);
		attributes.put("unitHelper", units);
		attributes.put("getAllCarRentalItems", getAllCarRentalItems);
		attributes.put("newCarRental", new CarRental());
		model.addAllAttributes(attributes);
	    return "action/carRental";
	} 

	@RequestMapping(value = "/showLaundryAction", method = RequestMethod.GET)
	public String showLaundryAction(Model model) {
		  List<Language> languages = languageService.getEnableLanguages(); 
	        List<Unit> units = unitService.getAllUnits();
	      	List<HotelServicesItem> getAllLaundryItems = actionService
					.getAllLaundryItems();
			Map<String, Object> attributes = new HashMap<String, Object>(); 
		  Laundry laundry= new Laundry();
			
			CoffeeeShopLanguageHelper coffeeeShopLanguageHelper = null; 
			CoffeeeShopUnitHelper coffeeeShopUnitHelper = null;
			for (Language language : languages) {
				coffeeeShopLanguageHelper = new CoffeeeShopLanguageHelper();
				coffeeeShopLanguageHelper.setLanguageId(language.getId());
				coffeeeShopLanguageHelper
						.setLangageName(language.getLanguageName());
				
				laundry.getLanguageHelper().add(coffeeeShopLanguageHelper);
			}
			
			for (Unit unit : units) {
				coffeeeShopUnitHelper = new CoffeeeShopUnitHelper();
				coffeeeShopUnitHelper.setUnitId(unit.getId());
				coffeeeShopUnitHelper.setUnitName(unit.getUnitName());
				laundry.getUnitHelper().add(coffeeeShopUnitHelper);
			}
	        
			attributes.put("languageHelper", languages);
			attributes.put("unitHelper", units);
			attributes.put("getAllLaundryItems", getAllLaundryItems);
			attributes.put("newLaundry", new Laundry());
			model.addAllAttributes(attributes);
        return "action/laundry";
	}
	
	
	
	@RequestMapping(value = "/addCarRentalItem", method = RequestMethod.POST)
	public String addCarRentalItem(@ModelAttribute CarRental carRental) {
		
		File serverFile = null;
		if (!carRental.getMultipartFile().isEmpty()) {
			try {
				byte[] bytes = carRental.getMultipartFile().getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("user.home");
				File dir = new File(rootPath+File.separator+"CareRental");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				serverFile = new File(dir.getAbsolutePath()
						+ File.separator + new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".jpeg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			} catch (Exception e) {
				
			}
		} 
		actionService.addCarRentalItem(carRental,serverFile);
		return "redirect:/action/showCarRentalAction";
	}

	

	@RequestMapping(value = "/addLaundryItem", method = RequestMethod.POST)
	public String addLaundryItem(@ModelAttribute Laundry laundry) {
		
		File serverFile = null;
		if (!laundry.getMultipartFile().isEmpty()) {
			try {
				byte[] bytes = laundry.getMultipartFile().getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("user.home");
				File dir = new File(rootPath+File.separator+"Laundry");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				serverFile = new File(dir.getAbsolutePath()
						+ File.separator + new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".jpeg");
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

			} catch (Exception e) {
				
			}
		} 
		actionService.addLaundryItem(laundry,serverFile);
		return "redirect:/action/showLaundryAction";
	}
  
	
	@RequestMapping(value = "/showReception", method = RequestMethod.GET)
	public String showReception(Model model) {
		Map<String, Object> attributes = new HashMap<String, Object>();

		HotelServicesCategory hotelServiceCategory = new HotelServicesCategory();

		attributes.put("hotelServiceCategory", hotelServiceCategory);
		model.addAllAttributes(attributes); 
		return "action/reception";
	}
	
	@RequestMapping(value = "/UpdateReceptionServiceStatus", method = RequestMethod.POST)
	public String UpdateReceptionServiceStatus(
			@ModelAttribute HotelServicesCategory hotelServicesCategory) {
		actionService.UpdateReceptionServiceStatus(hotelServicesCategory);
		return "redirect:/action/showReception";
	} 
	
}
