package com.shopify.service;

import com.shopify.dto.ProductDetailDTO;
import com.shopify.model.Image;
import com.shopify.model.Product;
import com.shopify.repo.ImageRepository;
import com.shopify.repo.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private ImageRepository imageRepository;

    public Page<Product> getProducts(int page, int size, Integer categoryId) {
        Pageable pageable = PageRequest.of(page, size);
        if (categoryId == null) {
            return productRepository.findAll(pageable);
        } else {
            return productRepository.findAllByCategory_Id(pageable, categoryId);
        }
    }

    public Page<Product> searchByName(int page, int size, String name) {
        Pageable pageable = PageRequest.of(page, size);
        return productRepository.findAllByNameContaining(pageable, name);
    }

    public Page<Product> findByCategory(int page, int size, Integer categoryId) {
        Pageable pageable = PageRequest.of(page, size);
        return productRepository.findAllByCategory_Id(pageable, categoryId);
    }

    public ProductDetailDTO getProductDetail(Integer id) {
        Product product = productRepository.getById(id);
        List<Image> images = imageRepository.findAllByProduct_Id(id);
        return new ProductDetailDTO(product, images);
    }
}
