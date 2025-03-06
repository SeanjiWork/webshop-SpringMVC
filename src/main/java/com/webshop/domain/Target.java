package com.webshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "targets")
public class Target extends BaseEntity {
    private String name;
    private String description;

//    product: Target - one => many - Products
    @OneToMany(mappedBy = "target")
    private List<Product> products;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Target{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
