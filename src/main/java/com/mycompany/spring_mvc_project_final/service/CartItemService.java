package com.mycompany.spring_mvc_project_final.service;


import com.mycompany.spring_mvc_project_final.entities.Cart;
import com.mycompany.spring_mvc_project_final.entities.CartItem;
import com.mycompany.spring_mvc_project_final.entities.Order;
import com.mycompany.spring_mvc_project_final.repository.CartItemRepository;
//import com.mycompany.spring_mvc_project_final.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Service
public class CartItemService {
    @Autowired
    CartItemRepository cartItemRepository;

    @Autowired
    ProductService productService;

    public CartItem save(CartItem cartItem) {
        return cartItemRepository.save(cartItem);
    }

    public Object findAll(){
        return cartItemRepository.findAll();
    }

    public double getAmount () {
        List<CartItem> cartList = cartItemRepository.getAllCartItem();
        double amount = 0;
        for (CartItem cartItem: cartList) {
            amount += (cartItem.getProduct().getPrice()*cartItem.getQuantity());
        }
        return amount;
    }

    public CartItem findByProductId(int id) { return cartItemRepository.findByProductId(id);
    }

    public List<CartItem> findByCartId(int id) { return cartItemRepository.findByCartId(id);
    }
    public void deleteById(int id) {
        cartItemRepository.deleteById(id);
    }


    public List<CartItem> findAllByCartId(int id) { return cartItemRepository.findByCartId(id);
    }

}

