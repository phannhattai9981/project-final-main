package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.Cart;
import com.mycompany.spring_mvc_project_final.entities.CartItem;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CartItemRepository extends CrudRepository<CartItem, Integer> {

    CartItem findByProductId(int id);

    @Query(value = "select * from cartitem where cartId = ?1", nativeQuery = true)
    List<CartItem> findByCartId(int id);

    @Query(value = "select * from cartitem", nativeQuery = true)
    List<CartItem> getAllCartItem();


}
