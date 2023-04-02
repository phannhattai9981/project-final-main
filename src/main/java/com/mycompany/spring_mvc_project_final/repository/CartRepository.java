package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.Cart;
import com.mycompany.spring_mvc_project_final.entities.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends CrudRepository<Cart, Integer> {

//    @Query(value = "SELECT * FROM carts", nativeQuery = true)
//    List<Cart> getAllCart();

//    Cart findByProductId(int id);

    Cart findById(int id);

    void deleteAllById(int id);
    @Query(value = "select * from carts where accountId = ?1", nativeQuery = true)
    Cart findByAccountID(int id);
}