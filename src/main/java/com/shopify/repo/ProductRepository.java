package com.shopify.repo;

import com.shopify.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

    Page<Product> findAllByCategory_Id(Pageable pageable, Integer categoryId);

    Page<Product> findAllByNameContaining(Pageable pageable, String name);

    Page<Product> findAllByNameAndCategory_Id(Pageable pageable, String name, Integer categoryId);
}
