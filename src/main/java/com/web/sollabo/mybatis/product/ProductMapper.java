package com.web.sollabo.mybatis.product;

import java.util.List;

import com.web.sollabo.product.dto.ProductDTO;
import com.web.sollabo.util.SearchVO;

public interface ProductMapper {

	public List<ProductDTO> getProduct(SearchVO searchVO);
	
	public List<ProductDTO> getProductReply(SearchVO searchVO);

	public List<ProductDTO> getDivision();
	
	public ProductDTO viewProduct(SearchVO searchVO);

	public int selectTotalProductCount(SearchVO searchVO);
	public int selectTotalProductReplyCount(SearchVO searchVO);
	
}
