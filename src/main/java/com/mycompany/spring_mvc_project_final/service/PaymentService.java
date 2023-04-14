package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.Order;
import com.mycompany.spring_mvc_project_final.entities.Payment;
import com.mycompany.spring_mvc_project_final.repository.PaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentService {
    @Autowired
    PaymentRepository paymentRepository;


    public Payment save(Payment payment) {
        return paymentRepository.save(payment);
    }

    public Payment findByOrderId(int id) {
        return paymentRepository.findByOrderId(id);
    }

//    public List<Payment> findByAccountId(int id) {
//        return paymentRepository.findByAccountId(id);
//    }
}
