/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.AccountBanking;
import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.enums.UserStatus;
import com.mycompany.spring_mvc_project_final.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 * @author Admin
 */
@Service
public class AccountService {
    @Autowired
    private AccountRepository accountRepository;

    public AccountEntity getAccountByEmail(String email) {
        return accountRepository.findByEmailLikeAndStatusLike(email, UserStatus.ACTIVE);
    }

    public AccountEntity findById (int id) {
        return accountRepository.findById(id);
    }

    public void save(AccountEntity accountEntity) { accountRepository.save(accountEntity);
    }

    public AccountEntity findByEmail(String username) {
        return accountRepository.findByEmail(username);
    }

    public Object findAll() {
        return accountRepository.findAll();
    }
    public List<AccountEntity> getAllAccountsExceptAdmin() {
        String adminEmail = "admin@gmail.com";
        return accountRepository.findByEmailNot(adminEmail);
    }
}














//    public AccountEntity findByEmailAndPassword(String email, String password) {
//        return accountRepository.findByEmailAndPassword(email,password);
//    }


//    public List<AccountEntity> getAllAccounts() {
//    }

//    public AccountEntity getAccountById(int accountId) {
//        accountRepository.getAccountById(accountId);
//    }


//    public List<AccountEntity> findByAccountId(int id) {
//        return accountRepository.findByAccountId(id);
//
//    }

