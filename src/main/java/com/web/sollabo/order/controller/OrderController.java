package com.web.sollabo.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("order")

public class OrderController {
	
	@GetMapping("/orderform")
	public String login() {
		return "order/orderform";
	}
	
	@GetMapping("/cart")
	public String cart() {
		return "order/cart";
	}
	
	@GetMapping("/product")
	public String product() {
		return "order/product";
	}
	
	@GetMapping("/history")
	public String history() {
		return "order/history";
	}
	
	@GetMapping("/detailhistory")
	public String detailhistory() {
		return "order/detailhistory";
	}
	
	
	
}
	