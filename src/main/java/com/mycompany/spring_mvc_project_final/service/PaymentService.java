package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.Order;
import com.mycompany.spring_mvc_project_final.entities.Payment;
import com.mycompany.spring_mvc_project_final.repository.PaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {
    @Autowired
    PaymentRepository paymentRepository;


    public Payment save(Payment payment) {
        return paymentRepository.save(payment);
    }

}
