/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.enums.UserStatus;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountRepository extends CrudRepository<AccountEntity, Long> {

    AccountEntity findByEmailLikeAndStatusLike(String email,
                                               UserStatus status);

    AccountEntity findById(int id);

    AccountEntity findByEmail(String username);

    List<AccountEntity> findByEmailNot(String email);





//    @Query(value = "SELECT * FROM account WHERE email = ?1 AND password = ?2", n)
//    AccountEntity findByEmailAndPassword(String email, String password);
}



//    void getAccountById(int accountId);
//}
