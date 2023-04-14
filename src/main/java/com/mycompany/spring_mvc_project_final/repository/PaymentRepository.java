package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.AccountBanking;
import com.mycompany.spring_mvc_project_final.entities.Payment;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PaymentRepository extends CrudRepository<Payment, Integer> {

    @Query(value = "select * from payments where order_id =?1", nativeQuery = true)
    Payment findByOrderId(int id);
//    @Query(value = "select * from payments where accountBankingId = ?1",nativeQuery = true)
//    List<Payment> findByAccountId(int id);

}
