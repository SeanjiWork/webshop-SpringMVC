package com.webshop.domain;

public class UserModel {
    private long id;
    private String password;
    private String fullname;
    private String email;
    private String phone;
    private String address;

    
    public long getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public String getFullname() {
        return fullname;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public void setId(long id) {
        this.id = id;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "UserModel [id=" + id + ", password=" + password + ", fullName=" + fullname + ", email=" + email
                + ", phone=" + phone + ", address=" + address + "]";
    } 
}
