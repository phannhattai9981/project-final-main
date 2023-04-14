package com.mycompany.spring_mvc_project_final.entities;

import com.mycompany.spring_mvc_project_final.enums.OrderStatus;
import org.hibernate.engine.spi.Status;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    Date orderDate;

    @Column (name = "customerName")
    private String customerName;

    @Column (name = "customerAddress")
    private String customerAddress;

    @Column (name = "total")
    private double total;

    @ManyToOne (fetch = FetchType.EAGER)
    @JoinColumn(name="accountId")
    private AccountEntity account;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetails;

    @OneToOne(mappedBy = "order", cascade = CascadeType.ALL)
    private Payment payment;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private OrderStatus status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public AccountEntity getAccount() {
        return account;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public void setAccount(AccountEntity account) {
        this.account = account;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

    public OrderStatus getStatus() {
        return status;
    }

    public void setStatus(OrderStatus status) {
        this.status = status;
    }
}
