package com.webshop.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "order_detail")
public class OrderDetail extends BaseEntity {

    private long quantity;
    private double price;

    //Order_id: OrderDetail - many => one - Order
    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    //Product_id
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;


}
