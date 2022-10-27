package com.web.sollabo.mybatis.cart;

import java.util.List;

import com.web.sollabo.cart.dto.CartDTO;

public interface CartMapper {
	
	/* 카트 추가 */
	public int addCart(CartDTO cart) throws Exception;
	
	/* 카트 삭제 */
	public int deleteCart(int cartNO);
	
	/* 카트 수량 수정 */
	public int modifyCount(CartDTO cart);
	
	/* 카트 목록 */
	public List<CartDTO> getCart();	
	
	/* 카트 확인 */
	public CartDTO checkCart(CartDTO cart);
	
	
}









