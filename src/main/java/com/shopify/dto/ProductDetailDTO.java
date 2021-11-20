package com.shopify.dto;

import com.shopify.model.Image;
import com.shopify.model.Product;

import java.util.List;

public class ProductDetailDTO {

    private Product product;
    private List<Image> images;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public ProductDetailDTO() {}

    public ProductDetailDTO(Product product, List<Image> images) {
        this.product = product;
        this.images = images;
    }
}
