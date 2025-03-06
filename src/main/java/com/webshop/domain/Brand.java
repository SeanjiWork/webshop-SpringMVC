package com.webshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "brands")
public class Brand extends BaseEntity {
    private String name;
    private String image;
    private int status;

    //BrandCategory: Brand - one => many - BrandCategory
    @OneToMany(mappedBy = "brand")
    private List<BrandCategory> brandCategories;

    //Product: Brand - one => many - product
    @OneToMany(mappedBy = "brand")
    private List<Product> products;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<BrandCategory> getBrandCategories() {
        return brandCategories;
    }

    public void setBrandCategories(List<BrandCategory> brandCategories) {
        this.brandCategories = brandCategories;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    @Override
    public String toString() {
        return "Brand{" +
                "name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", status=" + status +
                '}';
    }
}
