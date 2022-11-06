package com.web.sollabo.cart.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.cart.dto.CartDTO;
import com.web.sollabo.mybatis.cart.CartMapper;


@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartMapper cartMapper;
	
	@Override
	public int addCart(CartDTO cart) {
		
		// 장바구니 데이터 체크
		CartDTO checkCart = cartMapper.checkCart(cart);
				
		if(checkCart != null) {
			return 2;
		}
				
		// 장바구니 등록 & 에러 시 0반환
		try {
			return cartMapper.addCart(cart);
		} catch (Exception e) {
				return 0;
			}
		
	}
	
	@Override
	public int modifyCount(CartDTO cart) {
		
		return cartMapper.modifyCount(cart);
	}
	
	
	@Override
	public List<CartDTO> getCartList(String memno) {
		List<CartDTO> list = new ArrayList<CartDTO>();
		list = cartMapper.getCart();
		return list;
	}

	@Override
	public int deleteCart(int cartNo) {
		
		return cartMapper.deleteCart(cartNo);
	}



	@Override
	public List<CartDTO> getCartList2(CartDTO cartDTO) {
		List<CartDTO> list = new ArrayList<CartDTO>();
		list = cartMapper.getCart2(cartDTO);
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
