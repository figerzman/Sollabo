

package com.web.sollabo.product.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.mybatis.product.ProductMapper;
import com.web.sollabo.product.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductMapper productMapper;
	
	@Override
	public List<ProductDTO> getProduct(){
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		list = productMapper.getProduct();
		return list;
		
	}

	@Override
	public ProductDTO viewProduct(ProductDTO productdto) {	
		return productMapper.viewProduct(productdto);
	}
	
	

	/*
	 * @Override public ProductDTO diviProduct(ProductDTO dividto) { return
	 * productMapper.diviProduct(dividto); }
	 */
	/*
	 * @Override public List<ProductDTO> getDivi() { List<ProductDTO> text = new
	 * ArrayList<ProductDTO>(); text = productMapper.getDivi(); return text; }
	 */



	


	
	

	
	
	
	
	
}
