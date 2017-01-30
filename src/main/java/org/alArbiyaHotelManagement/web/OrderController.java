package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

 





import org.alArbiyaHotelManagement.model.HouseKeeping;
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;
import org.alArbiyaHotelManagement.model.ReceptionOrder;
import org.alArbiyaHotelManagement.service.OrderService;
import org.alArbiyaHotelManagement.service.ParkingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/order")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	ParkingService parkingService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String showOrder(Model model) {
		List<Orders> orders = orderService.GetAllOrder();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("orders", orders);
		attributes.put("order", new Orders());
		model.addAllAttributes(attributes);
		return "order/order";
	}
	 
	public Orders addOrder() {
		return null;
	}
	public Orders editOrder() {
		return null;
	}
	@RequestMapping(value = "acceptOrder",  method = RequestMethod.GET)
	public String acceptOrder(@RequestParam(required=true) long id,
			@RequestParam(required=true) long roomId,
			@RequestParam(required=true) String serviceItemName,
			@ModelAttribute Orders order) {
		orderService.acceptOrder(order,id, roomId, serviceItemName);
		return "redirect:/order";
	}
	@RequestMapping(value = "readyForDelivery", method = RequestMethod.GET)
	public String readyForDelivery(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
		orderService.readyForDelivery(order,id);
		return "redirect:/order";
	}
	@RequestMapping(value = "delivered", method = RequestMethod.GET)
	public String delivered(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
		orderService.delivered(order,id);
		return "redirect:/order";
	}
	
	
	
	//restaurant Order
	@RequestMapping(value="/restaurantScreenOrder", method=RequestMethod.GET)
	public @ResponseBody List<Orders> restaurantScreen() {
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("order", new Orders());
		return orderService.getRestaurantOrder();
	}
	
	 @RequestMapping(value="restaurantScreen",method = RequestMethod.GET)
	public String restaurant(Model model) {
		List<Orders> orders = orderService.getRestaurantOrder();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("orders", orders);
		attributes.put("order", new Orders());
		model.addAllAttributes(attributes);
		return "order/restaurantOrder";
	} 
	 
	 @RequestMapping(value = "restaurantacceptOrder",  method = RequestMethod.GET)
		public String restaurantacceptOrder(@RequestParam(required=false) long id,
				@RequestParam(required=true) long roomId,
				@RequestParam(required=true) String serviceItemName,@ModelAttribute Orders order) {
			orderService.acceptOrder(order,id, roomId, serviceItemName);
			return "redirect:/order/restaurantScreen";
		}
		@RequestMapping(value = "restaurantreadyForDelivery", method = RequestMethod.GET)
		public String restaurantreadyForDelivery(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
			orderService.readyForDelivery(order,id);
			return "redirect:/order/restaurantScreen";
		}
		@RequestMapping(value = "restaurantdelivered", method = RequestMethod.GET)
		public String restaurantdelivered(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
			orderService.delivered(order,id);
			return "redirect:/order/restaurantScreen";
		}
	 //end Restaurant Order
		 
		// Coffee Shop
		@RequestMapping(value="/coffeeShopScreenOrder", method=RequestMethod.GET)
		public @ResponseBody List<Orders> coffeeShopScreenOrder() { 
			return orderService.coffeeShopScreen();
		}
		
	    @RequestMapping(value="coffeeShopScreen",method = RequestMethod.GET)
		public String coffeeShop(Model model) {
			List<Orders> orders = orderService.coffeeShopScreen();
			Map<String, Object> attributes = new HashMap<String, Object>();
			attributes.put("orders", orders);
			attributes.put("order", new Orders());
			model.addAllAttributes(attributes);
			return "order/coffeeShopOrder";
		} 
		 
		 @RequestMapping(value = "coffeeShopacceptOrder",  method = RequestMethod.GET)
			public String coffeeShopacceptOrder(@RequestParam(required=false) long id,@RequestParam(required=true) long roomId,
					@RequestParam(required=true) String serviceItemName,@ModelAttribute Orders order) {
				orderService.acceptOrder(order,id, roomId, serviceItemName);
				return "redirect:/order/coffeeShopScreen";
				 
			}
			@RequestMapping(value = "coffeeShopreadyForDelivery", method = RequestMethod.GET)
			public String coffeeShopreadyForDelivery(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
				orderService.readyForDelivery(order,id);
				return "redirect:/order/coffeeShopScreen";
			}
			@RequestMapping(value = "coffeeShopdelivered", method = RequestMethod.GET)
			public String coffeeShopdelivered(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
				orderService.delivered(order,id);
				return "redirect:/order/coffeeShopScreen";
			}
			
			// End Coffee Shop
	    
			//Laundry Order
			@RequestMapping(value="/laundryScreenOrder", method=RequestMethod.GET)
			public @ResponseBody List<Orders> laundry() {
				Map<String, Object> attributes = new HashMap<String, Object>();
				attributes.put("order", new Orders());
				return orderService.getLaundry();
			} 
			 @RequestMapping(value="laundryScreen",method = RequestMethod.GET)
			public String laundry(Model model) {
				List<Orders> orders = orderService.getLaundry();
				Map<String, Object> attributes = new HashMap<String, Object>();
				attributes.put("orders", orders);
				attributes.put("order", new Orders());
				model.addAllAttributes(attributes);
				return "order/laundryOrder";
			}  
			 @RequestMapping(value = "laundryacceptOrder",  method = RequestMethod.GET)
				public String laundryacceptOrder(@RequestParam(required=false) long id,@RequestParam(required=true) long roomId,
						@RequestParam(required=true) String serviceItemName,@ModelAttribute Orders order) {
					orderService.acceptOrder(order,id, roomId, serviceItemName);
					return "redirect:/order/laundryScreen";
				}
				@RequestMapping(value = "laundryreadyForDelivery", method = RequestMethod.GET)
				public String laundryreadyForDelivery(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
					orderService.readyForDelivery(order,id);
					return "redirect:/order/laundryScreen";
				}
				@RequestMapping(value = "laundrydelivered", method = RequestMethod.GET)
				public String laundrydelivered(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
					orderService.delivered(order,id);
					return "redirect:/order/laundryScreen";
				}
				//End Laundry Order
				
				//parking request accept
				 
				@RequestMapping(value = "ParkingScreen", method = RequestMethod.GET)
				public String ParkingScreen(Model model) {
					List<Parking> parkings = parkingService.getAllParking(); 
					List<Parking> availableParking = parkingService.availableParking();
					List<Parking> customerAvailableParking = parkingService.customerParkingAvailable();
					List<Parking> vIPavailableParking = parkingService.vIPavailableParking();
					List<Parking> employeeavailableParking = parkingService.employeeavailableParking(); 
					List<Parking> customerNonAvailableParking = parkingService.customerNonAvailableParking();
					List<Parking> customerOutParking = parkingService.customerOutParking();
					List<Parking> vIPNonAvailableParking = parkingService.vIPNonAvailableParking();
					List<Parking> vIPOutParking = parkingService.vIPOutParking();
					List<Parking> employeeaNonAvailableParking = parkingService.employeeaNonAvailableParking();
				 
					List<Parking> cutomerparkings = parkingService.cutomerparkings();
					List<Parking> employeeparkings = parkingService.employeeparkings();
					List<Parking> VIPparkings = parkingService.VIPparkings();
					
					Map<String, Object> attributes = new HashMap<String, Object>();  
					
					attributes.put("parkings", parkings); 
					
					attributes.put("customerAvailableParking", customerAvailableParking); 
					attributes.put("customerOutParking", customerOutParking); 
					attributes.put("vIPOutParking", vIPOutParking); 
					attributes.put("vIPavailableParking", vIPavailableParking); 
					attributes.put("employeeavailableParking", employeeavailableParking); 
					
					attributes.put("customerNonAvailableParking", customerNonAvailableParking); 
					attributes.put("vIPNonAvailableParking", vIPNonAvailableParking); 
					attributes.put("employeeaNonAvailableParking", employeeaNonAvailableParking); 
					 
					attributes.put("cutomerparkings", cutomerparkings); 
					attributes.put("availableParking", availableParking); 
					attributes.put("employeeparkings", employeeparkings); 
					attributes.put("VIPparkings", VIPparkings);  
					model.addAllAttributes(attributes); 
					return "screens/parkingScreen";
				}
				
				 @RequestMapping(value = "accpetParkingRequest",  method = RequestMethod.GET)
					public String accpetParkingRequest(@RequestParam(required=false) long id,
					 @RequestParam(required=true) long roomId, @RequestParam(required=true) String serviceItemName, @RequestParam(required=false) long parkingId,@RequestParam(required=false) String requestType, @ModelAttribute ParkingOrder parkingOrder) {
					 orderService.accpetParkingRequest(parkingOrder,id, roomId, serviceItemName,parkingId,requestType);
					 return "redirect:/order/ParkingScreen";
					}
				 
				 //house keeping Requests
				 
				   @RequestMapping(value="housekeepingScreen",method = RequestMethod.GET)
					public String housekeepingScreen(Model model) {
						List<Orders> orders = orderService.coffeeShopScreen();
						Map<String, Object> attributes = new HashMap<String, Object>();
						attributes.put("orders", orders);
						attributes.put("order", new Orders());
						model.addAllAttributes(attributes);
						return "screens/housekeepingScreen";
					} 
				   
				   @RequestMapping(value="/housekeepingScreenOrder", method=RequestMethod.GET)
					public @ResponseBody List<HouseKeeping> housekeepingScreenOrder() { 
						return orderService.housekeepingScreenOrder();
					}
				    
				   @RequestMapping(value = "accpethouseKeepingRequest",  method = RequestMethod.GET)
					public String accpethouseKeepingRequest(@RequestParam(required=false) long id,
					 @RequestParam(required=true) long roomId, @RequestParam(required=true) String serviceItemName,HouseKeeping houseKeeping)
                      {
					 orderService.accpethouseKeepingRequest(id, roomId, serviceItemName,houseKeeping);
					 return "redirect:/order/housekeepingScreen";
					  }
				   
				   //Reception Order
				   
				   @RequestMapping(value="receptionScreen",method = RequestMethod.GET)
					public String receptionScreen(Model model) {
						List<ReceptionOrder> orders = orderService.receptionScreen();
						Map<String, Object> attributes = new HashMap<String, Object>();
						attributes.put("orders", orders);
						attributes.put("order", new ReceptionOrder());
						model.addAllAttributes(attributes);
						return "screens/receptionScreen";
					} 
				   
				   @RequestMapping(value="/receptionScreenScreenOrder", method=RequestMethod.GET)
					public @ResponseBody List<ReceptionOrder> receptionScreenScreenOrder() { 
						return orderService.receptionScreen();
					}
				   
				   @RequestMapping(value = "accpetreceptionRequest",  method = RequestMethod.GET)
					public String accpetreceptionRequest(@RequestParam(required=false) long id,
					 @RequestParam(required=true) long roomId, @RequestParam(required=true) String serviceItemName,ReceptionOrder receptionOrder)
                     {
					 orderService.accpetreceptionRequest(id, roomId, serviceItemName,receptionOrder);
					 return "redirect:/order/receptionScreen";
					  }
				   
				  
				   
}
