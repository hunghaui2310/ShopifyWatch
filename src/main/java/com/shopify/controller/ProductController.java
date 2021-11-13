package com.shopify.controller;

import com.shopify.model.Product;
import com.shopify.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    private final int SIZE = 2;

    @GetMapping()
    public String getProductPage(Model modelMap, HttpServletRequest request) {
        int page;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        } else {
            page = 1;
        }
        Integer categoryId = null;
        if (request.getParameter("category") != null) {
            categoryId = Integer.parseInt(request.getParameter("category"));
        }
        Page<Product> products = productService.getProducts(page - 1, SIZE, categoryId);
        modelMap.addAttribute("products", products.getContent());
        modelMap.addAttribute("noOfPages", products.getTotalPages());
        modelMap.addAttribute("currentPage", page);
        return "products";
    }
}
