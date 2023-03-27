package com.mycompany.spring_mvc_project_final.service;


import com.mycompany.spring_mvc_project_final.entities.Cart;
import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class CartService {
    @Autowired
    CartRepository cartRepository;

    @Autowired
    ProductService productService;

    public Object findAll(){
        return cartRepository.findAll();
    }

    public void deleteById(int id) {
        cartRepository.deleteById(id);
    }

//
//    public double getAmount () {
//        List<Ca> cartList = cartRepository.getAllCart();
//        double amount = 0;
//        for (Cart cart: cartList) {
//            amount += (cart.getProduct().getPrice()*cart.getQuantity());
//        }
//        return amount;
//    }
//

    public Cart findById(int id) {
        return cartRepository.findById(id);
    }
}


