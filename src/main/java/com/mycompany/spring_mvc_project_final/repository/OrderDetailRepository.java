package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.OrderDetail;
import com.mycompany.spring_mvc_project_final.entities.Payment;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetail, Integer> {
    @Query(value = "select * from orderdetails where orderid = ?1", nativeQuery = true)
    List<OrderDetail> findByOrderDetailByOrderId(int id);

    @Query(value ="SELECT od.* FROM orderdetails od JOIN orders o ON od.orderid = o.id WHERE o.status = 'SUCCESSFULL'",nativeQuery = true)
    List<OrderDetail> findSuccessfulOrderDetails();


}
