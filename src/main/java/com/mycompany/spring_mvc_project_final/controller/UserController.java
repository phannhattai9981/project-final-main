package com.mycompany.spring_mvc_project_final.controller;


import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import com.mycompany.spring_mvc_project_final.service.AccountBankingService;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import com.mycompany.spring_mvc_project_final.service.CartItemService;
import com.mycompany.spring_mvc_project_final.service.CartService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.http.MediaType;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import static com.mycompany.spring_mvc_project_final.enums.OrderStatus.CANCEL;
import static org.springframework.data.jpa.domain.AbstractPersistable_.id;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
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
        model.addAttribute("account", accountEntity);
        model.addAttribute("type", "user");
        return "user";
    }

    @RequestMapping(value = "/getPhotoAccount/{id}")
    public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
        response.setContentType("image/jpeg");

        AccountEntity p = accountService.findById(id);
        byte[] ph = p.getAvatar();
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }
    @RequestMapping(value = "/addBanking",method = GET,produces = "text/plain;charset=UTF-8")
    public String showNewBanking(Model model){
        model.addAttribute("accountBanking", new AccountBanking());
        return "banking";
    }
    @RequestMapping(value = "/addBanking",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
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
        model.addAttribute("account", accountEntity);
        model.addAttribute("type", "user");
        return "user";
    }
    @GetMapping("/showAccountBanking")
    public String showAccountsBanking(Model model,HttpSession session) {
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        List<AccountBanking>  accountBankingList = (List<AccountBanking>) accountBankingService.getAccountBankingByAccountId(accountEntity.getId());
        if (accountBankingList == null || accountBankingList.isEmpty()) {
            model.addAttribute("accountBanking", new AccountBanking());
            return "banking";
        }
        List<AccountBanking>  showAccountBanking = (List<AccountBanking>) accountBankingService.getAccountBankingByAccountId(accountEntity.getId());
        model.addAttribute("showAccountBanking",showAccountBanking);
        return "showBanking";
    }
    @GetMapping("/removeBanking{id}")
  public String deteleBanking(@PathVariable int id,Model model,HttpSession session){
        accountBankingService.deleteById(id);
        return "user";



    }
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
    @RequestMapping(value = "update/profile{id}",method = GET)
    public String showEditProfile(@PathVariable int id, Model model, HttpSession session){
        AccountEntity editProfile = (AccountEntity) session.getAttribute("account");
        model.addAttribute("editProfile",editProfile);

        return "profile";
    }
    @RequestMapping(value = "update/updateProfile", method = POST,
            consumes = MediaType.MULTIPART_FORM_DATA_VALUE,
            produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, "text/plain;charset=UTF-8"} )

    public String save (@RequestParam("id") int id, Model model,
                        @RequestParam("fullName") String name,
                        @RequestPart("photo") MultipartFile photo,
                        @RequestParam("phone") String phone,
                        @RequestParam("email") String email, HttpSession session) throws IOException {
        AccountEntity account = accountService.findById(id);
        account.setAvatar(photo.getBytes());
        account.setFullName(name);
        account.setPhone(phone);
        accountService.save(account);
        model.addAttribute("editProfile", account);
        model.addAttribute("type", "update");
        return "user";
    }
    public double calculateTotal(List<OrderDetail> orderDetails) {
        double total = 0;
        for (OrderDetail orderDetail : orderDetails) {
            total += orderDetail.getQuantity() * orderDetail.getPrice();
        }
        return total;
    }
}
