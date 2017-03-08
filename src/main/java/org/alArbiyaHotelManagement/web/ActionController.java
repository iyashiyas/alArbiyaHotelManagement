package org.alArbiyaHotelManagement.web;

 
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream; 
 
import java.io.OutputStream;
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
import org.alArbiyaHotelManagement.model.CarRentalCategory;
import org.alArbiyaHotelManagement.model.CoffeeShopCategory;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.LaundryCategory;
import org.alArbiyaHotelManagement.model.RestaurantCategory;
import org.alArbiyaHotelManagement.model.Unit;
import org.alArbiyaHotelManagement.service.ActionService;
import org.alArbiyaHotelManagement.service.BranchService;
import org.alArbiyaHotelManagement.service.IngredientService;
import org.alArbiyaHotelManagement.service.LanguageService;
import org.alArbiyaHotelManagement.service.UnitService;
 
import org.krysalis.barcode4j.impl.code128.Code128Bean;
import org.krysalis.barcode4j.impl.code128.Code128Constants;
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider;
import org.krysalis.barcode4j.tools.UnitConv;
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
		List<CoffeeShopCategory> coffeeShopCategory = actionService.coffeeShopCategory();
		List<Language> languages = languageService.getEnableLanguages();
		List<Unit> units = unitService.getAllUnits();
		List<Ingredient> ingredients = ingredientService.getAllIngredients();

		List<HotelServicesItem> getAllcoffeeShops = actionService
				.getAllCoffeShopItems();

		Map<String, Object> attributes = new HashMap<String, Object>();
		CoffeeShop coffeeShop = new CoffeeShop();
		attributes.put("languages", languages);
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
		attributes.put("coffeeShopCategory", coffeeShopCategory);
		attributes.put("getAllcoffeeShops", getAllcoffeeShops);
		attributes.put("coffeShop", coffeeShop);
		attributes.put("languageHelper", languages);
		attributes.put("unitHelper", units);
		attributes.put("newcoffeeShopCategory", new CoffeeShopCategory());
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
		 
		//Barcode
		File outputFile =null;
		try 
		  {
		 String barcodeString = coffeeShop.getServiceItemCode();;
		    Code128Bean barcode128Bean = new Code128Bean();
		    
		    
		    barcode128Bean.setCodeset(Code128Constants.CODESET_B);
		    final int dpi = 100;

		  //Configure the barcode generator
		    //adjust barcode width here
		  barcode128Bean.setModuleWidth(UnitConv.in2mm(1.0f / dpi)); 
		  barcode128Bean.doQuietZone(false);

		  //Open output file
		  String rootPath = System.getProperty("user.home");
			File dir = new File(rootPath+File.separator+"coffeeShop");
			if (!dir.exists())
				dir.mkdirs();
			 outputFile = new File(dir.getAbsolutePath()
					+ File.separator +"barcode"+ new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".png");
 		  
 			  /*outputFile = new File(dir+"barcode.png");*/
			OutputStream  out = 
					new FileOutputStream(outputFile);
			 
		  /*File outputFile = new File(dir+"barcode.png");
		  OutputStream out = new FileOutputStream(outputFile);*/
			
		      BitmapCanvasProvider canvasProvider = new BitmapCanvasProvider(
		              out, "image/x-png", dpi, BufferedImage.TYPE_BYTE_BINARY, false, 0);

		      barcode128Bean.generateBarcode(canvasProvider,barcodeString);

		      canvasProvider.finish();

            
		  } 
		
		
		  catch(Exception e)
		  {
			  
		  }
		 
		    
		actionService.addCoffeeShop(coffeeShop, serverFile,outputFile);
		return "redirect:/action/showCoffeeShop";
	}

	@RequestMapping(value = "/showRestaurant", method = RequestMethod.GET)
	public String showRestaurant(Model model) {

		List<Language> languages = languageService.getEnableLanguages();
		List<RestaurantCategory> restaurantCategory = actionService.restaurantCategory();
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
		attributes.put("restaurantCategory", restaurantCategory);
		attributes.put("restaurant", restaurant);
		attributes.put("ingredientHelper", ingredients);
		attributes.put("unitHelper", units);
		attributes.put("newRestaurantCategory", new RestaurantCategory());
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
		 
		//Barcode
				File outputFile =null;
				try 
				  {
				 String barcodeString = restaurant.getServiceItemCode();;
				    Code128Bean barcode128Bean = new Code128Bean();
				    
				    
				    barcode128Bean.setCodeset(Code128Constants.CODESET_B);
				    final int dpi = 100;

				  //Configure the barcode generator
				    //adjust barcode width here
				  barcode128Bean.setModuleWidth(UnitConv.in2mm(1.0f / dpi)); 
				  barcode128Bean.doQuietZone(false);

				  //Open output file
				  String rootPath = System.getProperty("user.home");
					File dir = new File(rootPath+File.separator+"restaurant");
					if (!dir.exists())
						dir.mkdirs();
					 outputFile = new File(dir.getAbsolutePath()
							+ File.separator +"barcode"+ new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".png");
		 		  
		 			  /*outputFile = new File(dir+"barcode.png");*/
					OutputStream  out = 
							new FileOutputStream(outputFile);
					 
				  /*File outputFile = new File(dir+"barcode.png");
				  OutputStream out = new FileOutputStream(outputFile);*/
					
				      BitmapCanvasProvider canvasProvider = new BitmapCanvasProvider(
				              out, "image/x-png", dpi, BufferedImage.TYPE_BYTE_BINARY, false, 0);

				      barcode128Bean.generateBarcode(canvasProvider,barcodeString);

				      canvasProvider.finish();

		            
				  } 
				
				
				  catch(Exception e)
				  {
					  
				  }
				  
		actionService.addRestaurantItems(restaurant,serverFile,outputFile);
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
		List<CarRentalCategory> carRentaltCategory = actionService.carRentaltCategory();
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
		attributes.put("carRentaltCategory", carRentaltCategory);
		attributes.put("languageHelper", languages);
		attributes.put("unitHelper", units);
		attributes.put("newCarRentalCategory", new CarRentalCategory());
		attributes.put("getAllCarRentalItems", getAllCarRentalItems);
		attributes.put("newCarRental", new CarRental());
		model.addAllAttributes(attributes);
	    return "action/carRental";
	} 

	@RequestMapping(value = "/showLaundryAction", method = RequestMethod.GET)
	public String showLaundryAction(Model model) {
		List<LaundryCategory> laundryCategory = actionService.laundryCategory();
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
			attributes.put("laundryCategory", laundryCategory);
			attributes.put("languageHelper", languages);
			attributes.put("newLundryCategory", new LaundryCategory());
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
		
		
		
		//Barcode
		File outputFile =null;
		try 
		  {
		 String barcodeString = carRental.getServiceItemCode();;
		    Code128Bean barcode128Bean = new Code128Bean();
		    
		    
		    barcode128Bean.setCodeset(Code128Constants.CODESET_B);
		    final int dpi = 100;

		  //Configure the barcode generator
		    //adjust barcode width here
		  barcode128Bean.setModuleWidth(UnitConv.in2mm(1.0f / dpi)); 
		  barcode128Bean.doQuietZone(false);

		  //Open output file
		  String rootPath = System.getProperty("user.home");
			File dir = new File(rootPath+File.separator+"CareRental");
			if (!dir.exists())
				dir.mkdirs();
			 outputFile = new File(dir.getAbsolutePath()
					+ File.separator +"barcode"+ new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".png");
 		  
 			  /*outputFile = new File(dir+"barcode.png");*/
			OutputStream  out = 
					new FileOutputStream(outputFile);
			 
		  /*File outputFile = new File(dir+"barcode.png");
		  OutputStream out = new FileOutputStream(outputFile);*/
			
		      BitmapCanvasProvider canvasProvider = new BitmapCanvasProvider(
		              out, "image/x-png", dpi, BufferedImage.TYPE_BYTE_BINARY, false, 0);

		      barcode128Bean.generateBarcode(canvasProvider,barcodeString);

		      canvasProvider.finish(); 
            
		  } 
		
		
		  catch(Exception e)
		  {
			  
		  } 
		actionService.addCarRentalItem(carRental,serverFile,outputFile);
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
		
		
		//Barcode
				File outputFile =null;
				try 
				  {
				 String barcodeString = laundry.getServiceItemCode();;
				    Code128Bean barcode128Bean = new Code128Bean();
				    
				    
				    barcode128Bean.setCodeset(Code128Constants.CODESET_B);
				    final int dpi = 100;

				  //Configure the barcode generator
				    //adjust barcode width here
				  barcode128Bean.setModuleWidth(UnitConv.in2mm(1.0f / dpi)); 
				  barcode128Bean.doQuietZone(false);

				  //Open output file
				  String rootPath = System.getProperty("user.home");
					File dir = new File(rootPath+File.separator+"Laundry");
					if (!dir.exists())
						dir.mkdirs();
					 outputFile = new File(dir.getAbsolutePath()
							+ File.separator +"barcode"+ new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss").format(new Date())+".png");
		 		  
		 			  /*outputFile = new File(dir+"barcode.png");*/
					OutputStream  out = 
							new FileOutputStream(outputFile);
					 
				  /*File outputFile = new File(dir+"barcode.png");
				  OutputStream out = new FileOutputStream(outputFile);*/
					
				      BitmapCanvasProvider canvasProvider = new BitmapCanvasProvider(
				              out, "image/x-png", dpi, BufferedImage.TYPE_BYTE_BINARY, false, 0);

				      barcode128Bean.generateBarcode(canvasProvider,barcodeString);

				      canvasProvider.finish(); 
		            
				  } 
				 
				  catch(Exception e)
				  {
					  
				  } 
		
		
		actionService.addLaundryItem(laundry,serverFile,outputFile);
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
	
	@RequestMapping(value="/addCoffeeShopCategory", method=RequestMethod.POST)
	public String addCoffeeShopCategory(@ModelAttribute CoffeeShopCategory coffeeShopCategory) {
		 actionService.addCoffeeShopCategory(coffeeShopCategory);
		return "redirect:/action/showCoffeeShop";
	}

	@RequestMapping(value="/addRestaurantCategory", method=RequestMethod.POST)
	public String addRestaurantCategory(@ModelAttribute RestaurantCategory restaurantCategory) {
		 actionService.addRestaurantCategory(restaurantCategory);
		return "redirect:/action/showRestaurant";
	}
	
	@RequestMapping(value="/addLaundryCategory", method=RequestMethod.POST)
	public String addLaundryCategory(@ModelAttribute LaundryCategory laundryCategory) {
		 actionService.addLaundryCategory(laundryCategory);
		return "redirect:/action/showLaundryAction";
	}
	
	@RequestMapping(value="/addCarRentalCategory", method=RequestMethod.POST)
	public String addCarRentalCategory(@ModelAttribute CarRentalCategory carRentalCategory) {
		 actionService.addCarRentalCategory(carRentalCategory);
		return "redirect:/action/showCarRentalAction";
	}
}
