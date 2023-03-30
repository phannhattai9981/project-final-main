package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.AccountBanking;
import com.mycompany.spring_mvc_project_final.repository.AccountBankingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountBankingService {
    @Autowired
    AccountBankingRepository accountBankingRepository;

    public List <AccountBanking> getAccountBankingByAccountId (int accountId) {
        return  accountBankingRepository.getAccountBankingByAccountId(accountId);
    }
    public  AccountBanking getAccountBankingByAccount_Id (int accountId) {
        return  accountBankingRepository.getAccountBankingByAccount_Id(accountId);
    }

    public void save(AccountBanking accountBanking) { accountBankingRepository.save(accountBanking);
    }
}
