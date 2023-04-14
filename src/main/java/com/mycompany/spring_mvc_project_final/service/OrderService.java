package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.CartItem;
import com.mycompany.spring_mvc_project_final.entities.Order;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    OrderRepository orderRepository;

    public Order getByIdOrder(int id) {
        return orderRepository.getByIdOrder(id);
    }

    public Order save(Order order) {
        return orderRepository.save(order);
    }

    public List<Order> findAll() {
        return (List<Order>) orderRepository.findAll();
    }

    public Order findById(int id) {
        return orderRepository.findById(id);
    }

    public List<Order> findBySuccessful() {
        return (List<Order>) orderRepository.findBySuccessful();
    }
    public List<Order> findByAccountId(int id) {
        return orderRepository.findByAccountId(id);
    }
}
