package com.shopify.controller.admin;

import com.shopify.model.Category;
import com.shopify.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/update/{id}")
    public String getUpdatePage(@PathVariable Integer id, Model model) {
        Category category = categoryService.getById(id);
        model.addAttribute("category", category);
        return "admin/new-category";
    }

    @PostMapping("/saveCategory")
    public String saveCategory(@ModelAttribute("category") Category category) {
        categoryService.save(category);
        return "redirect:/admin/category";
    }

    @PostMapping("/update/saveCategory")
    public String updateCategory(@ModelAttribute("category") Category category) {
        categoryService.save(category);
        return "redirect:/admin/category";
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteCategory(@PathVariable Integer id) {
        categoryService.deleteById(id);
        return ResponseEntity.ok().body(true);
    }
}
