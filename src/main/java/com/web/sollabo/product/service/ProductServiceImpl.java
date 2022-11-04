

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
	public ProductDTO viewProduct(ProductDTO productdto) {	
		return productMapper.viewProduct(productdto);
	}



	@Override
	public List<ProductDTO> getProduct(String divisionCode) {
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		list = productMapper.getProduct(divisionCode);
		return list;
	}



	@Override
	public List<ProductDTO> getDivision() {
		List<ProductDTO> divi = new ArrayList<ProductDTO>();
		divi = productMapper.getDivision();
		return divi;
	}



	
	
	

	


	


	
	

	
	
	
	
	
}
