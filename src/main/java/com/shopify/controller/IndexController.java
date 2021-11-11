package com.shopify.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/product")
	public String login(Model modelMap) {
		return "product";
	}

	@GetMapping("/payment")
	public String payment(Model modelMap) {
		return "payment";
	}

	@GetMapping("/cart")
	public String cart(Model modelMap) {
		return "cart";
	}

	@GetMapping("/category")
	public String category(Model modelMap) {
		return "category";
	}

	@GetMapping("/delivery")
	public String delivery(Model model) {
		return "delivery";
	}
}
