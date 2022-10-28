package com.web.sollabo.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {

	@GetMapping("/adminlist")
	public String adminlist() {
		return "admin/adminlist";
	}
	
	@GetMapping("/admincorr")
	public String admincorr() {
		return "admin/admincorr";
	}
	
	@GetMapping("/adminregister")
	public String adminregister() {
		return "admin/adminregister";
	}
	
	
}
