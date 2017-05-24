package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
   

import org.alArbiyaHotelManagement.model.Booking;
import org.alArbiyaHotelManagement.model.HouseKeeping;
import org.alArbiyaHotelManagement.model.NotificationDeliveryBoy;
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.model.Parking;
import org.alArbiyaHotelManagement.model.ParkingOrder;
import org.alArbiyaHotelManagement.model.ReadyForDelivery;
import org.alArbiyaHotelManagement.model.ReceptionOrder;
import org.alArbiyaHotelManagement.model.User;
import org.alArbiyaHotelManagement.service.BookingService;
import org.alArbiyaHotelManagement.service.OrderService;
import org.alArbiyaHotelManagement.service.ParkingService;
import org.alArbiyaHotelManagement.service.UserManagementService;
  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
	
	@Autowired
	UserManagementService userManagementService;
	
	@Autowired
    BookingService bookingService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String showOrder(Model model) {
		List<Orders> orders = orderService.GetAllOrder();
		 List<User> deliveryBoy = userManagementService.getAllDeliveryBoy();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("deliveryBoy", deliveryBoy);
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
	public String readyForDelivery(@RequestParam(required=false) long id, @RequestParam(required=false) String deliveryBoyName, @RequestParam(required=false) String roomName,@RequestParam(required=false) long roomId, @ModelAttribute Orders order) {
		orderService.readyForDelivery(order,id,deliveryBoyName,roomName,roomId);
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
	    List<User> deliveryBoy = userManagementService.getAllDeliveryBoy();
		List<Orders> orders = orderService.getRestaurantOrder();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("deliveryBoy", deliveryBoy); 
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
		public String restaurantreadyForDelivery(@RequestParam(required=false) long id, @RequestParam(required=false) String deliveryBoyName, @RequestParam(required=false) String roomName,@RequestParam(required=false) long roomId, @ModelAttribute Orders order) {
			orderService.readyForDelivery(order,id,deliveryBoyName,roomName,roomId);
			return "redirect:/order/restaurantScreen";
		}
		@RequestMapping(value = "restaurantdelivered", method = RequestMethod.GET)
		public String restaurantdelivered(@RequestParam(required=false) long id, @ModelAttribute Orders order) {
			orderService.delivered(order,id);
			return "redirect:/order/restaurantScreen";
		}
	 //end Restaurant Order
		 
		// Coffee Shop
		@RequestMapping(value="/coffeeShopScreenOrder", method=RequestMethod.GET,produces = "application/json")
		@ResponseBody
		public List<Orders> coffeeShopScreenOrder() { 
			return orderService.coffeeShopScreen();
		}
		
	    @RequestMapping(value="coffeeShopScreen",method = RequestMethod.GET)
		public String coffeeShop(Model model) {
			List<User> deliveryBoy = userManagementService.getAllDeliveryBoy();
			List<Orders> orders = orderService.coffeeShopScreen();
			Map<String, Object> attributes = new HashMap<String, Object>();
			attributes.put("orders", orders);
			attributes.put("deliveryBoy", deliveryBoy); 
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
			public String coffeeShopreadyForDelivery(@RequestParam(required=false) long id, @RequestParam(required=false) String deliveryBoyName, @RequestParam(required=false) String roomName,@RequestParam(required=false) long roomId,@ModelAttribute Orders order) {
				orderService.readyForDelivery(order,id,deliveryBoyName,roomName,roomId);
				return "redirect:/order/coffeeShopScreen";
			}
			@RequestMapping(value = "coffeeShopdelivered", method = RequestMethod.GET)
			public String coffeeShopdelivered(@ModelAttribute Booking booking,@RequestParam(required=false) long id,@RequestParam(required=false) long roomId,@RequestParam(required=false) int password, @ModelAttribute Orders order) {
				Map<String, Object> attributes = new HashMap<String, Object>();
				Booking AuthenticatePassword= bookingService.authenticate(roomId,password);
				if(AuthenticatePassword==null)
				{ 
					attributes.put("error","error"); 
				}
				else
				{ 
					orderService.delivered(order,id);

				}
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
				 List<User> deliveryBoy = userManagementService.getAllDeliveryBoy();
				List<Orders> orders = orderService.getLaundry();
				Map<String, Object> attributes = new HashMap<String, Object>();
				attributes.put("deliveryBoy", deliveryBoy);
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
				public String laundryreadyForDelivery(@RequestParam(required=false) long id, @RequestParam(required=false) String deliveryBoyName, @RequestParam(required=false) String roomName,@RequestParam(required=false) long roomId, @ModelAttribute Orders order) {
					orderService.readyForDelivery(order,id,deliveryBoyName,roomName,roomId);
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
					   List<User> deliveryBoy = userManagementService.getAllDeliveryBoy();
						List<HouseKeeping> orders = orderService.housekeepingScreenOrder();
						Map<String, Object> attributes = new HashMap<String, Object>();
						attributes.put("deliveryBoy", deliveryBoy);
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
					 @RequestParam(required=true) long roomId, @RequestParam(required=true) String serviceItemName,@RequestParam(required=true) String roomName, @RequestParam(required=true) String deliveryBoyName,HouseKeeping houseKeeping)
                      {
					 orderService.accpethouseKeepingRequest(id, roomId, serviceItemName,roomName,deliveryBoyName,houseKeeping);
					 return "redirect:/order/housekeepingScreen";
					  }
				   
				   //Reception Order
				   
				   @RequestMapping(value="receptionScreen",method = RequestMethod.GET)
					public String receptionScreen(Model model) {
					   List<User> deliveryBoy = userManagementService.getAllDeliveryBoy();
						List<ReceptionOrder> orders = orderService.receptionScreen();
						Map<String, Object> attributes = new HashMap<String, Object>();
						attributes.put("deliveryBoy", deliveryBoy);
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
				   
				   
				   @RequestMapping(value="readyForDeliveryScreen",method = RequestMethod.GET)
					public String readyForDeliveryScreen(Model model) {
					   
					   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
					      String name = auth.getName(); //get logged in username  
						List<ReadyForDelivery> readyForDeliveryScreen = orderService.readyForDeliveryScreen(name);
						Map<String, Object> attributes = new HashMap<String, Object>();
						attributes.put("orders", readyForDeliveryScreen);
						attributes.put("order", new ReadyForDelivery());
						model.addAllAttributes(attributes);
						return "readyForDelivery/readyForDelivery";
					}
				   
				   @RequestMapping(value="deliveryBoyAccept",method = RequestMethod.GET)
					public String deliveryBoyAccept(ReadyForDelivery ReadyForDelivery, @RequestParam(required=false) long orderId) {
					   orderService.deliveryBoyAccept(ReadyForDelivery,orderId);  
						return "redirect:/order/readyForDeliveryScreen";
					}
				   
				   @RequestMapping(value="deliverdAcccept",method = RequestMethod.GET)
					public String deliverdAcccept(@ModelAttribute Booking booking,@RequestParam(required=false) long id,@RequestParam(required=false) long roomId,@RequestParam(required=false) int password, @ModelAttribute Orders order) {
					   Map<String, Object> attributes = new HashMap<String, Object>();
						Booking AuthenticatePassword= bookingService.authenticate(roomId,password);
						if(AuthenticatePassword==null)
						{ 
							attributes.put("error","error"); 
						}
						else
						{ 
							orderService.delivered(order,id);

						}
						return "redirect:/order/readyForDeliveryScreen";
					} 
				   
				   @RequestMapping(value="/deliveryBoyScreen", method=RequestMethod.GET)
					public @ResponseBody List<ReadyForDelivery> deliveryBoyScreen() {
					   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
					      String name = auth.getName(); //get logged in username  
						return orderService.readyForDeliveryScreen(name);
					}
				    
				   @RequestMapping(value="houseKeepingdeliveryScreen",method = RequestMethod.GET)
					public String houseKeepingdeliveryScreen(Model model) { 
					   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
					      String name = auth.getName(); //get logged in username  
						List<ReadyForDelivery> readyForDeliveryScreen = orderService.readyForDeliveryScreen(name);
						Map<String, Object> attributes = new HashMap<String, Object>();
						attributes.put("orders", readyForDeliveryScreen);
						attributes.put("order", new ReadyForDelivery());
						model.addAllAttributes(attributes);
						return "readyForDelivery/readyForDeliveryhouseKeeping";
					}
				    
				   @RequestMapping(value="/houseKeepingdeliveryBoyScreen", method=RequestMethod.GET)
					public @ResponseBody List<ReadyForDelivery> houseKeepingdeliveryBoyScreen() {
					   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
					      String name = auth.getName(); //get logged in UserName  
						return orderService.readyForDeliveryScreen(name);
					}
				   
				   @RequestMapping(value="deliveryBoyAccepthouseKeeping",method = RequestMethod.GET)
					public String deliveryBoyAccepthouseKeeping(ReadyForDelivery ReadyForDelivery, @RequestParam(required=false) long orderId) {
					   orderService.deliveryBoyAccept(ReadyForDelivery,orderId);  
						return "redirect:/order/houseKeepingdeliveryScreen";
					}
				    
				   @RequestMapping(value="deliverdAccceptHouseKeeping",method = RequestMethod.GET)
					public String deliverdAccceptHouseKeeping(@ModelAttribute Booking booking,@RequestParam(required=false) long id,@RequestParam(required=false) long roomId, @ModelAttribute Orders order) {
					  orderService.delivered(order,id);
                      return "redirect:/order/houseKeepingdeliveryScreen";
					}  
				   
					@RequestMapping(value="getNotificationDeliveryBoy",method=RequestMethod.GET)
					public @ResponseBody List<NotificationDeliveryBoy> getNotificationDeliveryBoy() {
						  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
					      String name = auth.getName(); 
						List<NotificationDeliveryBoy> notifications = orderService.getNotificationDeliveryBoy(name);
						return notifications;
					}
					
					@RequestMapping(value="updateNotificationsDeliveryBoy", method=RequestMethod.POST)
					public @ResponseBody String updateNotificationsDeliveryBoy() { 
						 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
					      String name = auth.getName(); 
						orderService.updateNotificationsDeliveryBoy(name);
						return "Ok";
					}
}
