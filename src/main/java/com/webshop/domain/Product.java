package com.webshop.domain;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "products")
public class Product extends BaseEntity {
    @NotNull
    @NotEmpty(message = "Product name cannot be empty")
    private String name;

    @NotNull
    @Size(min = 3, message = "shortDescription must be at least 3 characters")
    private String shortDescription;

    @NotNull
    @Size(min = 3, message = "detailDescription must be at least 3 characters")
    @Column(columnDefinition = "MEDIUMTEXT")
    private String detailDescription;
    
    @NotNull
    @DecimalMin(value = "1.0", inclusive = false, message = "Price must be at least 1.0")
    private double price;

    private String image;
    private String url;
    private Integer status = 0;
   
    @NotNull
    @Min(value = 1, message = "Quantity must be at least 1")
    private long quantity;
    private long sold;

//    brand_id: Product - many => one - Brand
    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;

//    series_id: Product - many => one - series
    @ManyToOne
    @JoinColumn(name = "series_id")
    private Series series;

//    category_id: Product - many => one - category
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

//    target_id: Targets - one => many - Products
    @ManyToOne
    @JoinColumn(name = "target_id")
    private Target target;

//    promotion_id: Products - many => one - Promotions
    @ManyToOne
    @JoinColumn(name = "promotion_id")
    private Promotion promotion;

//    orderDetail:
    @OneToMany(mappedBy = "product")
    private List<OrderDetail> orderDetails;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getDetailDescription() {
        return detailDescription;
    }

    public void setDetailDescription(String detailDescription) {
        this.detailDescription = detailDescription;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public long getSold() {
        return sold;
    }

    public void setSold(long sold) {
        this.sold = sold;
    }

    public Target getTarget() {
        return target;
    }

    public void setTarget(Target target) {
        this.target = target;
    }

    public Promotion getPromotion() {
        return promotion;
    }

    public void setPromotion(Promotion promotion) {
        this.promotion = promotion;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Series getSeries() {
        return series;
    }

    public void setSeries(Series series) {
        this.series = series;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    

    @Override
    public String toString() {
        return "Product{" +
                "name='" + name + '\'' +
                ", shortDescription='" + shortDescription + '\'' +
                ", detailDescription='" + detailDescription + '\'' +
                ", price=" + price +
                ", image='" + image + '\'' +
                ", url='" + url + '\'' +
                ", status='" + status + '\'' +
                ", quantity=" + quantity +
                ", sold=" + sold +
                '}';
    }
}
