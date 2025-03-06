package com.webshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "brand_category")
public class BrandCategory extends BaseEntity {
    private String name;

    //Brand_id: BrandCategory - many => one - Brand
    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;

    //Category_id: BrandCategory - many => one - Category
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    //Series: BrandCategory - one => many - Series
    @OneToMany(mappedBy = "brandCategory")
    private List<Series> series;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Series> getSeries() {
        return series;
    }

    public void setSeries(List<Series> series) {
        this.series = series;
    }
}
