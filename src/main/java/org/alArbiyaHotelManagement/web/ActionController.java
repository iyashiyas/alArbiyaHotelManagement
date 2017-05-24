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
import org.alArbiyaHotelManagement.model.ServiceItemCategory;
import org.alArbiyaHotelManagement.model.HotelServicesCategory;
import org.alArbiyaHotelManagement.model.HotelServicesItem;
import org.alArbiyaHotelManagement.model.Ingredient;
import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.LaundryCategory;
import org.alArbiyaHotelManagement.model.Product;
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
	public String showCoffeeShop(Model model,@RequestParam(required=false) String categoryCode,@RequestParam(required=false) long serviceCateogy){
		List<ServiceItemCategory> serviceItemCategory = actionService.serviceItemCategory(serviceCateogy);
		List<Language> languages = languageService.getEnableLanguages();
	/*	List<Unit> units = unitService.getAllUnits();
		List<Ingredient> ingredients = ingredientService.getAllIngredients();
*/
		/*List<HotelServicesItem> getAllcoffeeShops = actionService
				.getAllCoffeShopItems(); */
		List<Product> getAllProductWithCategory = actionService
				.getAllProductWithCategory(categoryCode); 
		Map<String, Object> attributes = new HashMap<String, Object>();
           
	/*	CoffeeeShopLanguageHelper coffeeeShopLanguageHelper = null; 
		Product coffeeShop = new Product();*/
		/*
		CoffeeeShopUnitHelper coffeeeShopUnitHelper = null;
		CoffeeeShopIngredientHelper coffeeeShopIngredientHelper = null;
*/
		/* for (Language language : languages) {
			coffeeeShopLanguageHelper = new CoffeeeShopLanguageHelper();
			coffeeeShopLanguageHelper.setLanguageId(language.getId());
			coffeeeShopLanguageHelper
					.setLangageName(language.getLanguageName());
			coffeeShop.getLanguageHelper().add(coffeeeShopLanguageHelper);
		} */

		/*for (Unit unit : units) {
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
		}*/
		attributes.put("coffeeShopCategory", serviceItemCategory);
	/*	attributes.put("getAllcoffeeShops", getAllcoffeeShops);*/
	/*	attributes.put("coffeShop", coffeeShop);*/
		 attributes.put("languages", languages);
		 attributes.put("getAllProductWithCategory", getAllProductWithCategory);
		/*attributes.put("unitHelper", units);*/
		attributes.put("newcoffeeShopCategory", new ServiceItemCategory());
/*		attributes.put("ingredientHelper", ingredients);*/
		attributes.put("newProduct", new Product());
		model.addAllAttributes(attributes);
		return "action/coffee";
	}

	@RequestMapping(value = "/addCoffeShop", method = RequestMethod.POST)
	public String addCoffeShop(@ModelAttribute Product coffeeShop/*@ModelAttribute CoffeeShop coffeeShop*/) {
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
	/*	actionService.addCoffeeShop(coffeeShop, serverFile,outputFile);*/
		long categorycode=coffeeShop.getServiceItemCategory().getId();
		actionService.addNewProduct(coffeeShop, serverFile,outputFile);
		return "redirect:/action/showCoffeeShop?categoryCode="+categorycode+"&serviceCateogy=1";
	}

	@RequestMapping(value = "/showRestaurant", method = RequestMethod.GET)
	public String showRestaurant(Model model,@RequestParam(required=false) String categoryCode,@RequestParam(required=false) long serviceCateogy) {
		List<ServiceItemCategory> serviceItemCategory = actionService.serviceItemCategory(serviceCateogy);
		List<Language> languages = languageService.getEnableLanguages();
	/*	List<Unit> units = unitService.getAllUnits();
		List<Ingredient> ingredients = ingredientService.getAllIngredients();
*/
		/*List<HotelServicesItem> getAllcoffeeShops = actionService
				.getAllCoffeShopItems(); */
		List<Product> getAllProductWithCategory = actionService
				.getAllProductWithCategory(categoryCode); 
		Map<String, Object> attributes = new HashMap<String, Object>();
           
	/*	CoffeeeShopLanguageHelper coffeeeShopLanguageHelper = null; 
		Product coffeeShop = new Product();*/
		/*
		CoffeeeShopUnitHelper coffeeeShopUnitHelper = null;
		CoffeeeShopIngredientHelper coffeeeShopIngredientHelper = null;
*/
		/* for (Language language : languages) {
			coffeeeShopLanguageHelper = new CoffeeeShopLanguageHelper();
			coffeeeShopLanguageHelper.setLanguageId(language.getId());
			coffeeeShopLanguageHelper
					.setLangageName(language.getLanguageName());
			coffeeShop.getLanguageHelper().add(coffeeeShopLanguageHelper);
		} */

		/*for (Unit unit : units) {
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
		}*/
		attributes.put("restaurantCategory", serviceItemCategory);
	/*	attributes.put("getAllcoffeeShops", getAllcoffeeShops);*/
	/*	attributes.put("coffeShop", coffeeShop);*/
		 attributes.put("languages", languages);
		 attributes.put("getAllProductWithCategory", getAllProductWithCategory);
		/*attributes.put("unitHelper", units);*/
		attributes.put("newRestaurantCategory", new ServiceItemCategory());
/*		attributes.put("ingredientHelper", ingredients);*/
		attributes.put("newProduct", new Product());
		model.addAllAttributes(attributes);
	 
		return "action/restaurant";
	}

	@RequestMapping(value = "/addRestaurantItems", method = RequestMethod.POST)
	public String addRestaurantItems(@ModelAttribute Product restaurant) {
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
	/*	actionService.addCoffeeShop(coffeeShop, serverFile,outputFile);*/
		long categorycode=restaurant.getServiceItemCategory().getId();
		actionService.addNewProduct(restaurant, serverFile,outputFile); 
		return "redirect:/action/showRestaurant?categoryCode="+categorycode+"&serviceCateogy=6";
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
	public String showCarRentalAction(Model model,@RequestParam(required=false) String categoryCode,@RequestParam(required=false) long serviceCateogy) {
		List<ServiceItemCategory> serviceItemCategory = actionService.serviceItemCategory(serviceCateogy);
		List<Language> languages = languageService.getEnableLanguages();
	/*	List<Unit> units = unitService.getAllUnits();
		List<Ingredient> ingredients = ingredientService.getAllIngredients();
*/
		/*List<HotelServicesItem> getAllcoffeeShops = actionService
				.getAllCoffeShopItems(); */
		List<Product> getAllProductWithCategory = actionService
				.getAllProductWithCategory(categoryCode); 
		Map<String, Object> attributes = new HashMap<String, Object>();
           
	/*	CoffeeeShopLanguageHelper coffeeeShopLanguageHelper = null; 
		Product coffeeShop = new Product();*/
		/*
		CoffeeeShopUnitHelper coffeeeShopUnitHelper = null;
		CoffeeeShopIngredientHelper coffeeeShopIngredientHelper = null;
*/
		/* for (Language language : languages) {
			coffeeeShopLanguageHelper = new CoffeeeShopLanguageHelper();
			coffeeeShopLanguageHelper.setLanguageId(language.getId());
			coffeeeShopLanguageHelper
					.setLangageName(language.getLanguageName());
			coffeeShop.getLanguageHelper().add(coffeeeShopLanguageHelper);
		} */

		/*for (Unit unit : units) {
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
		}*/
		attributes.put("carRentaltCategory", serviceItemCategory);
	/*	attributes.put("getAllcoffeeShops", getAllcoffeeShops);*/
	/*	attributes.put("coffeShop", coffeeShop);*/
		 attributes.put("languages", languages);
		 attributes.put("getAllProductWithCategory", getAllProductWithCategory);
		/*attributes.put("unitHelper", units);*/
		attributes.put("newCarRentalCategory", new ServiceItemCategory());
/*		attributes.put("ingredientHelper", ingredients);*/
		attributes.put("newProduct", new Product());
		model.addAllAttributes(attributes);
	 
	    return "action/carRental";
	} 

	@RequestMapping(value = "/showLaundryAction", method = RequestMethod.GET)
	public String showLaundryAction(Model model,@RequestParam(required=false) String categoryCode,@RequestParam(required=false) long serviceCateogy) {
		List<ServiceItemCategory> serviceItemCategory = actionService.serviceItemCategory(serviceCateogy);
		List<Language> languages = languageService.getEnableLanguages();
	/*	List<Unit> units = unitService.getAllUnits();
		List<Ingredient> ingredients = ingredientService.getAllIngredients();
*/
		/*List<HotelServicesItem> getAllcoffeeShops = actionService
				.getAllCoffeShopItems(); */
		List<Product> getAllProductWithCategory = actionService
				.getAllProductWithCategory(categoryCode); 
		Map<String, Object> attributes = new HashMap<String, Object>();
           
	/*	CoffeeeShopLanguageHelper coffeeeShopLanguageHelper = null; 
		Product coffeeShop = new Product();*/
		/*
		CoffeeeShopUnitHelper coffeeeShopUnitHelper = null;
		CoffeeeShopIngredientHelper coffeeeShopIngredientHelper = null;
*/
		/* for (Language language : languages) {
			coffeeeShopLanguageHelper = new CoffeeeShopLanguageHelper();
			coffeeeShopLanguageHelper.setLanguageId(language.getId());
			coffeeeShopLanguageHelper
					.setLangageName(language.getLanguageName());
			coffeeShop.getLanguageHelper().add(coffeeeShopLanguageHelper);
		} */

		/*for (Unit unit : units) {
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
		}*/
		attributes.put("laundryCategory", serviceItemCategory);
	/*	attributes.put("getAllcoffeeShops", getAllcoffeeShops);*/
	/*	attributes.put("coffeShop", coffeeShop);*/
		 attributes.put("languages", languages);
		 attributes.put("getAllProductWithCategory", getAllProductWithCategory);
		/*attributes.put("unitHelper", units);*/
		attributes.put("newLundryCategory", new ServiceItemCategory());
/*		attributes.put("ingredientHelper", ingredients);*/
		attributes.put("newProduct", new Product());
		model.addAllAttributes(attributes);
        return "action/laundry";
	}
	
	
	
	@RequestMapping(value = "/addCarRentalItem", method = RequestMethod.POST)
	public String addCarRentalItem(@ModelAttribute Product carRental) {
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
	/*	actionService.addCoffeeShop(coffeeShop, serverFile,outputFile);*/
		long categorycode=carRental.getServiceItemCategory().getId();
		actionService.addNewProduct(carRental, serverFile,outputFile); 
		return "redirect:/action/showCarRentalAction?categoryCode="+categorycode+"&serviceCateogy=7";
		 
	}

	

	@RequestMapping(value = "/addLaundryItem", method = RequestMethod.POST)
	public String addLaundryItem(@ModelAttribute Product laundry) {
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
	/*	actionService.addCoffeeShop(coffeeShop, serverFile,outputFile);*/
		long categorycode=laundry.getServiceItemCategory().getId();
		actionService.addNewProduct(laundry, serverFile,outputFile); 
		return "redirect:/action/showLaundryAction?categoryCode="+categorycode+"&serviceCateogy=5";
		  
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
	public String addCoffeeShopCategory(@ModelAttribute ServiceItemCategory serviceItemCategory) {
		 actionService.addServiceItemCategory(serviceItemCategory); 
		return "redirect:/action/showCoffeeShop?categoryCode=&serviceCateogy=1";
	}

	@RequestMapping(value="/addRestaurantCategory", method=RequestMethod.POST)
	public String addRestaurantCategory(@ModelAttribute ServiceItemCategory serviceItemCategory) {
		 actionService.addServiceItemCategory(serviceItemCategory);
		return "redirect:/action/showRestaurant?categoryCode=&serviceCateogy=6";
	}
	
	@RequestMapping(value="/addLaundryCategory", method=RequestMethod.POST)
	public String addLaundryCategory(@ModelAttribute ServiceItemCategory serviceItemCategory) {
		 actionService.addServiceItemCategory(serviceItemCategory);
			return "redirect:/action/showLaundryAction?categoryCode=&serviceCateogy=5";
	}
	
	@RequestMapping(value="/addCarRentalCategory", method=RequestMethod.POST)
	public String addCarRentalCategory(@ModelAttribute ServiceItemCategory serviceItemCategory) {
		 actionService.addServiceItemCategory(serviceItemCategory);
			return "redirect:/action/showCarRentalAction?categoryCode=&serviceCateogy=7";
	}
}
