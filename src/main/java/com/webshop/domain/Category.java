package com.webshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "categories")
public class Category extends BaseEntity {
    private String name;
    private String description;
    private String image;
    private String url;
    private String content;
    private Integer status = 1;
    private String type;

    // BrandCategory: Category - one => many - BrandCategory
    @OneToMany(mappedBy = "category")
    private List<BrandCategory> brandCategories;

    // Product: Category - one => many - Product
    @OneToMany(mappedBy = "category")
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

     public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
        return "Category{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", url='" + url + '\'' +
                ", content='" + content + '\'' +
                ", status=" + status +
                ", type='" + type + '\'' +
                '}';
    }

   
}
