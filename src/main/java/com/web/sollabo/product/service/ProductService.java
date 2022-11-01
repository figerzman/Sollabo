package com.web.sollabo.product.service;

import java.util.List;

import com.web.sollabo.product.dto.ProductDTO;

public interface ProductService {
	
	public List<ProductDTO> getProduct();
	
	/* public List<ProductDTO> getDivi(); */
	
	public ProductDTO viewProduct(ProductDTO productdto);
	
	/* public ProductDTO diviProduct(ProductDTO dividto); */
	
	
	
	
	
}
