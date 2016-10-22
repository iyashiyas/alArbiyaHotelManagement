package org.alArbiyaHotelManagement.web;

import org.alArbiyaHotelManagement.model.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/order")
public class OrderController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String showOrder() {
		return "order/order";
	}

	public Order addOrder() {
		return null;
	}
	public Order editOrder() {
		return null;
	}
}
