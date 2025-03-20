package com.webshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.webshop.domain.Product;
import com.webshop.repository.ProductRepository;

@Service
public class ProductService {
    private ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    public Product HandleSaveProduct(Product product) {
        System.out.println("Saving product: " + product);
        return this.productRepository.save(product);
    }

    public Optional<Product> getProductById(long id) {
        return this.productRepository.findById(id);
    }

    public Product getProductByName(String name) {
        return this.productRepository.findProductByName(name);
    }

    public void deleteProduct(long id) {
        this.productRepository.deleteById(id);
    }
}
