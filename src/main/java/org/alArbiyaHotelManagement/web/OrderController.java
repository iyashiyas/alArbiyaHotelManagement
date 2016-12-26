package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Language;
import org.alArbiyaHotelManagement.model.Orders;
import org.alArbiyaHotelManagement.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
}
