package com.web.sollabo.product.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.sollabo.product.dto.ProductDTO;
import com.web.sollabo.product.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {

	/* 항상 위로 */
	@Autowired
	ProductService productService;

	/*
	 * 구매하기(버튼)
	 * 
	 * @GetMapping("cart") public String cart() { return "cart/cart"; }
	 */

	/* 제품 상세 페이지 */
	@GetMapping("goodspage")
	@ResponseBody
	public ModelAndView goodspage(ProductDTO productdto) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("product/goodspage");
		modelAndView.addObject("productList", productService.viewProduct(productdto));

		return modelAndView;
	}

	/* 제품 페이지 */
	@GetMapping("product")
	public ModelAndView getProduct() {
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		list = productService.getProduct();
		System.out.println(list);
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("product/product");
		modelAndView.addObject("productList", list);

		return modelAndView;
	}

	/*
	 * @GetMapping("product1") public ModelAndView getDivi() { List<ProductDTO> text
	 * = new ArrayList<ProductDTO>(); text = productService.getDivi();
	 * System.out.println(text); ModelAndView modelAndView = new ModelAndView();
	 * 
	 * modelAndView.setViewName("product/product");
	 * modelAndView.addObject("divisiontext", text);
	 * 
	 * return modelAndView; }
	 */
	
	  @GetMapping("product1")
	  
	  @ResponseBody public ModelAndView divipage(ProductDTO dividto) { 
	  ModelAndView  modelAndView = new ModelAndView();
	  modelAndView.setViewName("product/product");
	  modelAndView.addObject("productList", productService.diviProduct(dividto));
	  
	  return modelAndView; 
	  }
	 

}
