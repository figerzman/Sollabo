package com.web.sollabo.mybatis.product;

import java.util.List;

import com.web.sollabo.product.dto.ProductDTO;

public interface ProductMapper {

	public List<ProductDTO> getProduct();
	
	public ProductDTO viewProduct(ProductDTO productdto);

	
}
