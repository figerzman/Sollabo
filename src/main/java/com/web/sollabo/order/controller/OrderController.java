package com.web.sollabo.order.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.sollabo.cart.dto.CartDTO;
import com.web.sollabo.cart.service.CartService;
import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.member.service.MemberService;

	

@Controller
@RequestMapping("order")

public class OrderController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private MemberService memberservice;
	
	
	
	@GetMapping("/ordert")
	public String order() {
		return "order/order";
	}
	
	
	/*
	 * @GetMapping("orderform") public String going(@ModelAttribute CartDTO cartDTO)
	 * { cartService.getCart2(cartDTO); return "order/orderform"; }
	 */
	
	@GetMapping("orderform")
	public ModelAndView getCart2(CartDTO cartDTO) {
		List<CartDTO> list = new ArrayList<CartDTO>();
		list = cartService.getCartList2(cartDTO);
		System.out.println(list);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("order/orderform");
		modelAndView.addObject("cartList",list);
		
		
		return modelAndView;
		
	}
	

	
	
	@GetMapping("/product")
	public String product() {
		return "order/product";
	}
	
	@GetMapping("/history")
	public String history() {
		return "order/history";
	}
	
	
	
}
	