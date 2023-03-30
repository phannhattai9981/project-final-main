package com.mycompany.spring_mvc_project_final.controller;


import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import com.mycompany.spring_mvc_project_final.service.AccountBankingService;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

import java.util.Date;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    AccountService accountService;
    @Autowired
    AccountBankingService accountBankingService;
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @GetMapping("/account_InfoView")
    public String viewInfoView(Model model, HttpSession session){
       AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        AccountBanking accountBanking = accountBankingService.getAccountBankingByAccount_Id(accountEntity.getId());
        model.addAttribute("accountBanking", accountBanking);
        return "user";
    }
    @RequestMapping(value = "/addBanking",method = RequestMethod.GET)
    public String showNewBanking(Model model){
        model.addAttribute("accountBanking", new AccountBanking());
        model.addAttribute("msg", "Thêm card");
        model.addAttribute("action", "addBanking");
        model.addAttribute("type", "Add New Banking");
        return "banking";
    }
    @RequestMapping(value = "/addBanking", method = POST)
    public String saveBanking(@RequestParam String fullName,
                              @RequestParam int cardNumber,
                              @RequestParam double balance,
                              @RequestParam int cvc,
                              @RequestParam Date expired_date
                              ) {
        AccountBanking newAccountBanking = new AccountBanking();
        newAccountBanking.setFullName(fullName);
        newAccountBanking.setCardNumber(cardNumber);
        newAccountBanking.setExpired_date(expired_date);
        newAccountBanking.setCvc(cvc);
        accountBankingService.save(newAccountBanking);
        return "/user/account_InfoView";
    }
    @GetMapping("/account_orderList")
    public String viewOrderList(Model model, HttpSession session){
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        List<Order> ordersList = orderRepository.findByAccountId(accountEntity.getId());
        model.addAttribute("ordersList",ordersList);
        return "orderlist";
    }

    @GetMapping("/orderdetaile/{id}")
    public String viewCartOfCustomer(@PathVariable int id, Model model,HttpSession session) {
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        List<OrderDetail> orderDetails = orderDetailRepository.findByOrderDetailByOrderId(id);
        model.addAttribute("orderDetails", orderDetails);
        return "order";
    }
    @GetMapping("/removeOrderDetail{id}")
    public String deleteCart(@PathVariable int id) {
        orderDetailRepository.deleteById(id);
        return "redirect:/order";
    }
}
