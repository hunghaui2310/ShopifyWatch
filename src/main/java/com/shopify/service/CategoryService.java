package com.shopify.service;

import com.shopify.model.Category;
import com.shopify.repo.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    public List<Category> getAllCategory() {
        return categoryRepository.findAll();
    }

    public Category save(Category category) {
        return categoryRepository.save(category);
    }

    public Category getById(Integer id) {
        return categoryRepository.getById(id);
    }

    public void deleteById(Integer id) {
        categoryRepository.deleteById(id);
    }
}
