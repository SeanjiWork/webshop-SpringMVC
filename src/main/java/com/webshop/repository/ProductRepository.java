package com.webshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webshop.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Product save(Product product);
    List<Product> findAll();
    Product findProductByName(String name);
    Product findProductById(Long id);
    void deleteProductById(Long id);

}
