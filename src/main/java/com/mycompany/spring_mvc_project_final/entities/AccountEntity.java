/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.entities;

import com.mycompany.spring_mvc_project_final.enums.UserStatus;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import javax.persistence.*;
import javax.validation.constraints.Email;

@Entity
@Table(name = "account")
public class AccountEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column (name = "name")
    private String fullName;
    @Column (name = "phone")
    private String phone;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    private Date Registration_date;

    @Column(unique = true )
    private String email;
    private String password;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private UserStatus status;

    @Lob
    @Column (name = "avatar")
    private byte [] avatar;


    @OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
    private List<Order> orders;


    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "account_role",
            joinColumns = @JoinColumn(name = "user_id",
                    referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(
                    name = "role_id",
                    referencedColumnName = "id"))
    private Set<RoleEntity> userRoles;

    @OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
    private List<AccountBanking> accountBankings;
    @OneToMany(mappedBy = "account", cascade = CascadeType.ALL)
    private List<Payment> payments;

    @OneToOne(mappedBy = "account", cascade = CascadeType.ALL)
    private Cart cart;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getRegistration_date() {
        return Registration_date;
    }

    public void setRegistration_date(Date registration_date) {
        Registration_date = registration_date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserStatus getStatus() {
        return status;
    }

    public void setStatus(UserStatus status) {
        this.status = status;
    }

    public byte[] getAvatar() {
        return avatar;
    }

    public void setAvatar(byte[] avatar) {
        this.avatar = avatar;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public Set<RoleEntity> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(Set<RoleEntity> userRoles) {
        this.userRoles = userRoles;
    }

    public List<AccountBanking> getAccountBankings() {
        return accountBankings;
    }

    public void setAccountBankings(List<AccountBanking> accountBankings) {
        this.accountBankings = accountBankings;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public List<Payment> getPayments() {
        return payments;
    }

    public void setPayments(List<Payment> payments) {
        this.payments = payments;
    }
}
