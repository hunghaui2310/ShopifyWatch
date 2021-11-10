package com.shopify.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping("/")
	public String index() {
		System.out.println("Called to index");
		return "index";
	}
	
//	@GetMapping("/login")
//	public String login() {
//		System.out.println("Called to login");
//		return "/view/client/view/login";
//	}
}
