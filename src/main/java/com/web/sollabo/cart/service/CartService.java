package com.web.sollabo.cart.service;

import java.util.List;

import com.web.sollabo.cart.dto.CartDTO;

public interface CartService {
	
	/* 장바구니 추가 */
	public int addCart(CartDTO cart);
	
	public List<CartDTO> getCart();
	
	// 카트 수량 변경
	public int modifyCount(CartDTO cart);
	
}
