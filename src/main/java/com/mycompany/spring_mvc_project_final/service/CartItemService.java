package com.mycompany.spring_mvc_project_final.service;


import com.mycompany.spring_mvc_project_final.entities.CartItem;


import com.mycompany.spring_mvc_project_final.repository.CartItemRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

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

    public double getAmount (int id) {
        List<CartItem> cartList = cartItemRepository.findByCartId(id);
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

    public CartItem updateCartItem(int id, int quantity) {
        CartItem item = cartItemRepository.findById(id);
        item.setQuantity(quantity);
        cartItemRepository.save(item);
        return item;
    }

}

