package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

 
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.service.OrderService;
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
	public String acceptOrder(@RequestParam(required=false) long id,@ModelAttribute Orders order) {
		orderService.acceptOrder(order,id);
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
		public String restaurantacceptOrder(@RequestParam(required=false) long id,@ModelAttribute Orders order) {
			orderService.acceptOrder(order,id);
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
		public @ResponseBody List<Orders> coffeeShopScreen() {
			Map<String, Object> attributes = new HashMap<String, Object>();
			attributes.put("order", new Orders());
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
			public String coffeeShopacceptOrder(@RequestParam(required=false) long id,@ModelAttribute Orders order) {
				orderService.acceptOrder(order,id);
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
				public String laundryacceptOrder(@RequestParam(required=false) long id,@ModelAttribute Orders order) {
					orderService.acceptOrder(order,id);
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
}
