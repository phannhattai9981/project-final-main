package com.mycompany.spring_mvc_project_final.controller;


import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import com.mycompany.spring_mvc_project_final.service.AccountBankingService;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import com.mycompany.spring_mvc_project_final.service.CartItemService;
import com.mycompany.spring_mvc_project_final.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import static com.mycompany.spring_mvc_project_final.enums.OrderStatus.CANCEL;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    AccountService accountService;
    @Autowired
    AccountBankingService accountBankingService;
    @Autowired
     OrderRepository orderRepository;
    @Autowired
     OrderDetailRepository orderDetailRepository;
    @Autowired
    CartItemService cartItemService;
    @Autowired
    CartService cartService;


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
        return "banking";
    }
    @RequestMapping(value = "/addBanking",method = RequestMethod.POST)
    public String saveBanking(@ModelAttribute("accountBanking") AccountBanking accountBanking,
                              @RequestParam("fullName") String fullName,
                              @RequestParam("cardNumber") int cardNumber,
                              @RequestParam("balance") double balance,
                              @RequestParam("cvc") int cvc, Model model, HttpSession session) {
        accountBanking.setFullName(fullName);
        accountBanking.setCardNumber(cardNumber);
        accountBanking.setCvc(cvc);
        accountBanking.setBalance(balance);
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        accountBanking.setAccount(accountEntity);
        accountBankingService.save(accountBanking);
        return "user";
    }

//    @GetMapping("/new")
//    public String showNewAccountBankingForm(Model model) {
//        model.addAttribute("accountBanking", new AccountBanking());
//        model.addAttribute("accountList", accountService.findAll());
//        return "banking";
//    }
//
//    @PostMapping("/create")
//    public String createAccountBanking(AccountBanking accountBanking) {
//        accountBankingService.save(accountBanking);
//        return "redirect:/user/banking";
//    }
    @GetMapping("/orderList")
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
        double total = calculateTotal(orderDetails);
        model.addAttribute("total", total);
        model.addAttribute("orderDetails", orderDetails);
        return "order";
    }
    @GetMapping("/removeOrder{id}")
    public String deteleOrder(@PathVariable int id, Model model, HttpSession session) {
        Order order = orderRepository.findById(id);
        if (!(order == null)) {
            order.setStatus(CANCEL);
            orderRepository.save(order);
        }
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        List<Order> ordersList = orderRepository.findByAccountId(accountEntity.getId());
        model.addAttribute("ordersList",ordersList);
        return "orderlist";
    }
    public double calculateTotal(List<OrderDetail> orderDetails) {
        double total = 0;
        for (OrderDetail orderDetail : orderDetails) {
            total += orderDetail.getQuantity() * orderDetail.getPrice();
        }
        return total;
    }
}
