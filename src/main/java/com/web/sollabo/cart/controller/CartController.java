package com.web.sollabo.cart.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping("/cart/{memNo}")
	public String cartPageGET(@PathVariable("memNo") String memberNo, Model model) {
		
		model.addAttribute("cartList", cartService.getCartList(memberNo));
		
		return "/cart";
	}
	

	@GetMapping("cart")
	public ModelAndView getCart(String memno) {
		List<CartDTO> list = new ArrayList<CartDTO>();
		list = cartService.getCartList(memno);
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
	
	
	
	//장바구니 삭제
	@PostMapping("/cart/delete")
	public String deleteCartPOST(CartDTO cart) {
		
		cartService.deleteCart(cart.getCartNo());
		
		return "redirect:/cart/" + cart.getMemNo();
		
	}		
	
}
