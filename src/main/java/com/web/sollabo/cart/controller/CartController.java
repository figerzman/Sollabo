package com.web.sollabo.cart.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.sollabo.cart.dto.CartDTO;
import com.web.sollabo.cart.service.CartService;

@Controller
@RequestMapping("cart")


public class CartController {
	@Autowired
	CartService cartService;
	

	

	@GetMapping("cart")
	public ModelAndView getCart() {
		List<CartDTO> list = new ArrayList<CartDTO>();
		list = cartService.getCart();
		System.out.println(list);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("cart/cart");
		modelAndView.addObject("cartList",list);
		
		
		return modelAndView;
		
	}
	
	/* 장바구니 수량 수정 */
	@PostMapping("/cart/update")
	public String updateCartPOST(CartDTO cart) {
		cartService.modifyCount(cart);
		
		return "redirect:/cart/" + cart.getMemNo();

	}
	
	
}
