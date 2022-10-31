package com.web.sollabo.admin.controller;




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
@RequestMapping("admin")
public class AdminController {

	@Autowired
	ProductService productService;

	@GetMapping("/adminregister")
	public ModelAndView getProduct() {
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		list = productService.getProduct();
		System.out.println(list);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/adminregister");
		modelAndView.addObject("productList", list);

		return modelAndView;

	}
	
	@GetMapping("/adminlist")
	public String adminlist() {
		return "admin/adminlist";
	}
	
	@GetMapping("/admincorr")
	public String admincorr() {
		return "admin/admincorr";
	}
	
	
	

}
