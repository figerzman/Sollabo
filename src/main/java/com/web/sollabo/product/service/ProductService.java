package com.web.sollabo.product.service;

import java.util.List;

import com.web.sollabo.product.dto.ProductDTO;

public interface ProductService {
	
	/* product 테이블 리스트*/
	public List<ProductDTO> getProduct(String divisionCode);
	
	/* product_division 테이블 리스트*/
	public List<ProductDTO> getDivision();
	
	/*goodspage(productList) product_no  */
	public ProductDTO viewProduct(ProductDTO productdto);
	
	
	
	/* public ProductDTO cateProduct(ProductDTO catedto); */

	
	
	
	
	
	
	
}
