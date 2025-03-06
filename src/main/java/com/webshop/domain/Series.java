package com.webshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "series")
public class Series extends BaseEntity {
    private String name;
    private String description;

    //brand_category_id: Series - many => one - BrandCategory
    @ManyToOne
    @JoinColumn(name = "brand_category_id")
    private BrandCategory brandCategory;

    //Product: Series - one => many - Product
    @OneToMany(mappedBy = "series")
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

    public BrandCategory getBrandCategory() {
        return brandCategory;
    }

    public void setBrandCategory(BrandCategory brandCategory) {
        this.brandCategory = brandCategory;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Series{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
