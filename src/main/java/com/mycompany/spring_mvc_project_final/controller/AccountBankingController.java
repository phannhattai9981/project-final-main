package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.AccountBanking;
import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.service.AccountBankingService;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

@Controller
@RequestMapping("/")
public class AccountBankingController {


    @Autowired
    AccountBankingService accountBankingService;
    @Autowired
    AccountService accountService;

    @RequestMapping(value = "/addBankingCart", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    public String showNewBanking(Model model) {
        model.addAttribute("accountBanking", new AccountBanking());
        return "bankingCart";
    }

    @RequestMapping(value = "/addBankingCart",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    public String saveBanking(@ModelAttribute("accountBanking") AccountBanking accountBanking,
                              @RequestParam("fullName") String fullName,
                              @RequestParam("cardNumber") String cardNumber,
                              @RequestParam("balance") double balance,
                              @RequestParam("cvc") int cvc, Model model, HttpSession session) {
        accountBanking.setFullName(fullName);
        accountBanking.setCardNumber(cardNumber);
        accountBanking.setCvc(cvc);
        accountBanking.setBalance(balance);
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        accountBanking.setAccount(accountEntity);
        accountBankingService.save(accountBanking);
        return "redirect:/cart";
    }
}
