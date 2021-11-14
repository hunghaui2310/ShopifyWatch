package com.shopify.controller;

import com.shopify.model.Product;
import com.shopify.repo.CategoryRepository;
import com.shopify.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Controller
public class IndexController {

	@Autowired
	private CategoryRepository categoryRepository;

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/payment")
	public String payment(Model modelMap) {
		return "payment";
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
