package com.shopify.controller.admin;

import com.shopify.model.Category;
import com.shopify.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/category")
public class AdminCategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping()
    public String getAllCategory(ModelMap modelMap) {
        modelMap.addAttribute("categories", categoryService.getAllCategory());
        return "admin/category";
    }

    @GetMapping("/new")
    public String getPageNew(Model model) {
        model.addAttribute("category", new Category());
        return "admin/new-category";
    }

    @PostMapping("/saveCategory")
    public String submitForm(@ModelAttribute("category") Category category) {
        categoryService.save(category);
        return "redirect:/admin/category";
    }
}
