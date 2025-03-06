package com.webshop.domain;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "orders")
public class Order extends BaseEntity {
    private String fullname;
    private String address;
    private String phone;
    private double TotalPrice;

    //user_id: order - many => one - user
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    //OrderDetail: Order - one => many - OrderDetail
    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetail;


    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getTotalPrice() {
        return TotalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        TotalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "Order{" +
                "fullname='" + fullname + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", TotalPrice=" + TotalPrice +
                '}';
    }
}
