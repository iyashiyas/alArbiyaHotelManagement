package org.alArbiyaHotelManagement.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.alArbiyaHotelManagement.model.Order;
import org.alArbiyaHotelManagement.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/order")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String showOrder(Model model) {
		List<Order> orders = orderService.GetAllOrder();
		Map<String, Object> attributes = new HashMap<String, Object>();
		attributes.put("orders", orders);
		attributes.put("order", new Order());
		model.addAllAttributes(attributes);
		return "order/order";
	}

	public Order addOrder() {
		return null;
	}
	public Order editOrder() {
		return null;
	}
}
