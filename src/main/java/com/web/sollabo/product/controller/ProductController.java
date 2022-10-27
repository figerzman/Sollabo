package com.web.sollabo.product.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.sollabo.product.dto.ProductDTO;
import com.web.sollabo.product.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {
	
	@GetMapping("goodspage")
	public String goodspage() {
		return "product/goodspage";
	}

	@Autowired
	ProductService productService;
	
	
	
	@GetMapping("product")
	public ModelAndView getProduct() {
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		list = productService.getProduct();
		System.out.println(list);
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("product/product");
		modelAndView.addObject("productList",list);
		
		
		return modelAndView;
		
	}
		
}
