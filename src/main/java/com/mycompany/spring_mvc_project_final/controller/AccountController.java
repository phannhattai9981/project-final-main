package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.entities.Order;
import com.mycompany.spring_mvc_project_final.entities.OrderDetail;
import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.enums.OrderStatus;
import com.mycompany.spring_mvc_project_final.enums.UserStatus;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import com.mycompany.spring_mvc_project_final.service.OrderDetailService;
import com.mycompany.spring_mvc_project_final.service.OrderService;
import com.mycompany.spring_mvc_project_final.service.ProductService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import static com.mycompany.spring_mvc_project_final.enums.OrderStatus.CANCEL;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/admin")
public class AccountController {

    @Autowired
    private OrderService orderService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private ProductService productService;

    @GetMapping("/full_account")
    public String showAccounts(Model model) {
        List<AccountEntity> accountEntityList = accountService.getAllAccountsExceptAdmin();
        model.addAttribute("accountEntityList", accountEntityList);
        return "account";
    }
    @GetMapping("/admin_InfoView")
    public String viewInfoView(Model model, HttpSession session){
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        model.addAttribute("account", accountEntity);
        model.addAttribute("type", "user");
        return "admin";
    }
    @GetMapping("removeAccount{id}")
    public String deteleAccount(@PathVariable int id, Model model, HttpSession session) {
        AccountEntity account = accountService.findById(id);
        if (!(account == null)) {
            account.setStatus(UserStatus.BLOCK);
            accountService.save(account);
        }
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        List<AccountEntity> accountEntityList = (List<AccountEntity>) accountService.getAllAccountsExceptAdmin();
        model.addAttribute("accountEntityList",accountEntityList);
        return "account";
    }
    @GetMapping("unBlockAccount{id}")
    public String unBlockAccount(@PathVariable int id, Model model, HttpSession session) {
        AccountEntity account = accountService.findById(id);
        if (!(account == null)) {
            account.setStatus(UserStatus.ACTIVE);
            accountService.save(account);
        }
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        List<AccountEntity> accountEntityList = (List<AccountEntity>) accountService.getAllAccountsExceptAdmin();
        model.addAttribute("accountEntityList",accountEntityList);
        return "account";
    }
    @GetMapping("/listFullOrder")
    public String showOrders(Model model) {
        List<Order> orderFullList = orderService.findAll ();
        model.addAttribute("orderFullList", orderFullList);
        return "orderFullList";
    }
    @GetMapping("/deteleListFullOrder{id}")
    public String detelelistFullOrder(@PathVariable int id, Model model) {
        Order order = orderService.findById(id);
        if (!(order == null)) {
            order.setStatus(OrderStatus.DELIVERY);
            orderService.save(order);
        }
        List<Order> orderFullList = (List<Order>) orderService.findAll();
        model.addAttribute("orderFullList",orderFullList);
        return "orderFullList";
    }
    @GetMapping("/orderListDetaile{id}")
    public String viewCartOfCustomer(@PathVariable int id, Model model) {
        List<OrderDetail> orderDetails = orderDetailService.findByOrderDetailByOrderId(id);
        double total = calculateTotal(orderDetails);
        model.addAttribute("total", total);
        model.addAttribute("orderListDetaile", orderDetails);
        return "orderListDetaile";
    }
    @GetMapping("/detele1ListFullOrder{id}")
    public String detele1listFullOrder(@PathVariable int id, Model model) {
        Order order = orderService.findById(id);
        if (!(order == null)) {
            order.setStatus(CANCEL);
            orderService.save(order);
        }
        List<Order> orderFullList = (List<Order>) orderService.findAll();
        model.addAttribute("orderFullList",orderFullList);
        return "orderFullList";
    }
    @RequestMapping(value = "update/admin/profile{id}",method = GET)
    public String showEditProfile(@PathVariable int id, Model model, HttpSession session){
        AccountEntity editProfile = (AccountEntity) session.getAttribute("account");
        model.addAttribute("account",editProfile);

        return "profileAdmin";
    }
    @RequestMapping(value = "update/admin/updateProfile", method = POST,
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
        model.addAttribute("account", account);
        model.addAttribute("type", "update");
        return "admin";
    }
    @RequestMapping(value = "update/admin/getPhotoAccount/{id}")
    public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
        response.setContentType("image/jpeg");

        AccountEntity p = accountService.findById(id);
        byte[] ph = p.getAvatar();
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }
    @RequestMapping(value = "/manager", method = GET)
    public String showListManager(Model model){
        Object listManager = productService.findAll();
        model.addAttribute("managerList", listManager);
        return "manager";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(@RequestParam("searchInput") String searchInput, Model model) {
        List<Product> searchList;
        if (searchInput.isEmpty()) {
            return "redirect:/manager";
        } else {
            searchList = productService.findByNameContaining(searchInput);
        }
        model.addAttribute("managerList",searchList);
        return "admin/manager";
    }

    @RequestMapping(value = "/deleteProduct/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable int id) {
        productService.deleteById(id);
        return "redirect:/admin/manager";

    }


    public double calculateTotal(List<OrderDetail> orderDetails) {
        double total = 0;
        for (OrderDetail orderDetail : orderDetails) {
            total += orderDetail.getQuantity() * orderDetail.getPrice();
        }
        return total;
    }


}
