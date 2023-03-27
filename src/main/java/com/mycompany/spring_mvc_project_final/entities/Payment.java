package com.mycompany.spring_mvc_project_final.entities;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "payments")
public class Payment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "amount")
    private double amount;

    @Column(name = "payment_date")
    private Date payment_date;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "accountBankingId")
    private AccountBanking accountBanking;

    @OneToOne
    private Order order;

    public Payment() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getPayment_date() {
        return payment_date;
    }

    public void setPayment_date(Date payment_date) {
        this.payment_date = payment_date;
    }

    public AccountBanking getAccountBanking() {
        return accountBanking;
    }

    public void setAccountBanking(AccountBanking accountBanking) {
        this.accountBanking = accountBanking;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
}
