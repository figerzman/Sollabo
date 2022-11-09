

package com.web.sollabo.product.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.mybatis.product.ProductMapper;
import com.web.sollabo.product.dto.ProductDTO;
import com.web.sollabo.util.SearchVO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper productMapper;
	


	@Override
	public ProductDTO viewProduct(SearchVO searchVO) {	
		return productMapper.viewProduct(searchVO);
	}



	@Override
	public List<ProductDTO> getProduct(SearchVO searchVO) {
		System.out.println("@@@@@@@@@@@@@"+searchVO.toString());
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		list = productMapper.getProduct(searchVO);
		System.out.println("@"+list.size());
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getProductName());		
		}
		return list;
	}



	@Override
	public List<ProductDTO> getDivision() {
		List<ProductDTO> divi = new ArrayList<ProductDTO>();
		divi = productMapper.getDivision();
		return divi;
	}



	@Override
	public int selectTotalProductCount(SearchVO searchVO) {		
		return productMapper.selectTotalProductCount(searchVO);
	}



	@Override
	public List<ProductDTO> getProductReply(SearchVO searchVO) {
		return productMapper.getProductReply(searchVO);
	}



	@Override
	public int selectTotalProductReplyCount(SearchVO searchVO) {
		return productMapper.selectTotalProductReplyCount(searchVO);
	}



	
	
	

	


	


	
	

	
	
	
	
	
}
