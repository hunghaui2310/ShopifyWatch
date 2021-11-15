package com.shopify.model;

import javax.persistence.*;

@Entity
@Table(name = "tbl_delivery")
public class Delivery {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
    private String phoneNumber;
    private String address;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Delivery() {
    }

    public Delivery(String name, String phoneNumber, String address, User user) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.user = user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
