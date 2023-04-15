package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.Order;
import com.mycompany.spring_mvc_project_final.entities.OrderDetail;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailService {
    @Autowired
    OrderDetailRepository orderDetailRepository;


    public void save(OrderDetail orderDetail) {
        orderDetailRepository.save(orderDetail);
    }

    public List<OrderDetail> findByOrderDetailByOrderId(int id) {
        return orderDetailRepository.findByOrderDetailByOrderId(id);
    }

    public List<OrderDetail> findSuccessfulOrderDetails() {
        return (List<OrderDetail>) orderDetailRepository.findSuccessfulOrderDetails();
    }

    public void deletebyId(int id) {
        orderDetailRepository.deleteById(id);
    }

}
