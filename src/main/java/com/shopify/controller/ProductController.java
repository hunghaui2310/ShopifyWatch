package com.shopify.controller;

import com.shopify.dto.ProductDetailDTO;
import com.shopify.model.Product;
import com.shopify.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    private final int SIZE = 20;

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
        appendDataToProduct(modelMap, products.getContent(), products.getTotalPages(), page);
        return "products";
    }

    @PostMapping()
    public String searchProduct(Model modelMap, HttpServletRequest request) {
        int page;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        } else {
            page = 1;
        }
        String name = request.getParameter("name");
        modelMap.addAttribute("valueSearch", name);
        Page<Product> products = productService.searchByName(page - 1, SIZE, name);
        appendDataToProduct(modelMap, products.getContent(), products.getTotalPages(), page);
        return "products";
    }

    @GetMapping("/{id}")
    public String getDetailProduct(ModelMap modelMap, @PathVariable Integer id) {
        ProductDetailDTO productDetailDTO = productService.getProductDetail(id);
        modelMap.addAttribute("product", productDetailDTO);
        modelMap.addAttribute("productsRelated", productService.findByCategory(0, 5, productDetailDTO.getProduct().getCategory().getId()).getContent());
        return "product-detail";
    }

    private void appendDataToProduct(Model modelMap, List<Product> products, int totalPage, int currentPage) {
        modelMap.addAttribute("products", products);
        modelMap.addAttribute("noOfPages", totalPage);
        modelMap.addAttribute("currentPage", currentPage);
    }
}
