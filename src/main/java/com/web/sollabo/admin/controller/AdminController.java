package com.web.sollabo.admin.controller;




import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.web.sollabo.product.dto.ProductDTO;
import com.web.sollabo.product.service.ProductService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired
	ProductService productService;
	
	
	
	
	@GetMapping("/adminMenuList")
	public String adminMenuList() {
		return "admin/adminMenuList";
	}
	
	
	
	@GetMapping("/adminProductUpdate")
	   public ModelAndView getProduct(@RequestParam String divisionCode) {
	      List<ProductDTO> list = new ArrayList<ProductDTO>();
	      list = productService.getProduct(divisionCode );
	      System.out.println(list);
	      ModelAndView modelAndView = new ModelAndView();
	      modelAndView.setViewName("admin/adminProductUpdate");
	      modelAndView.addObject("productList", list);

	      return modelAndView;

	   }

}
