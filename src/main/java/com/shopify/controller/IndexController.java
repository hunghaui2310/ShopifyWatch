package com.shopify.controller;

import com.shopify.model.Product;
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
	private ProductRepository productRepo;

	@GetMapping("/")
	public String index(HttpServletRequest request, HttpServletResponse response, ModelMap modelMap) throws IOException, ServletException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			if (request.authenticate(response)) {
				Principal userPrincipal = request.getUserPrincipal();
				modelMap.addAttribute("username",userPrincipal.getName());
			}
		}
		return "index";
	}
	
	@GetMapping("/product")
	public String products(Model modelMap) {
		List<Product> products = productRepo.findAll();
		modelMap.addAttribute("products", products);
		return "products";
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
