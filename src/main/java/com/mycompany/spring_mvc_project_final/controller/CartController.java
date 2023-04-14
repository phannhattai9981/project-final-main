package com.mycompany.spring_mvc_project_final.controller;


import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

import static com.mycompany.spring_mvc_project_final.enums.OrderStatus.PROCESSING;


@Controller
@RequestMapping(value = "/")
public class CartController {
    @Autowired
    ProductService productService;
    @Autowired
    CartService cartService;

    @Autowired
    CartItemService cartItemService;

    @Autowired
    OrderService orderService;

    @Autowired
    OrderDetailService orderDetailService;
    @Autowired
    AccountService accountService;

    @Autowired
    AccountBankingService accountBankingService;

    @Autowired
    PaymentService paymentService;
    @Autowired
    MailSender mailSender;
    @Autowired
    private JavaMailSender javaMailSender;


    @RequestMapping(value = "/cart", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    public String showCart(Model model,HttpSession session) {
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");

        double total = cartItemService.getAmount(accountEntity.getCart().getId());
        Cart cart = cartService.findByAccountID(accountEntity.getId());
        model.addAttribute("total", total);
        model.addAttribute("cartItem", cartItemService.findByCartId(cart.getId()));
        return "cart";
    }



    @RequestMapping(value = "/addToCart/{id}", method = RequestMethod.GET,produces = "text/plain;charset=UTF-8")
    public String addToCart(@PathVariable int id,HttpSession session) {
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        if (accountEntity == null) {
            return "redirect:/login";
        } else {
            Cart cart = cartService.findByAccountID(accountEntity.getId());
            Product product = productService.findById(id);
            if (product.getQuantity() < 1) {
                return "redirect:/";
            } else {
                List<CartItem> cartItemList = cartItemService.findByCartId(cart.getId());
                if (cartItemList.isEmpty()) {
                    CartItem cartItem = new CartItem();
                    cartItem.setProduct(product);

                    cartItem.setCart(cart);
                    cartItem.setQuantity(1);
                    cartItemService.save(cartItem);
                } else {
                    boolean cartItemCheck = false;
                    for (CartItem cartItem : cartItemList) {
                        if (product.getId() == cartItem.getProduct().getId()) {
                            cartItemCheck = true;
                            cartItem.setCart(cart);
                            cartItem.setQuantity(cartItem.getQuantity() + 1);
                            cartItemService.save(cartItem);
                            break;
                        }
                    }
                    if (cartItemCheck == false) {
                        CartItem cartItem1 = new CartItem();
                        cartItem1.setQuantity(1);
                        cartItem1.setProduct(product);
                        cartItem1.setCart(cart);
                        cartItemService.save(cartItem1);
                    }
                }
                return "redirect:/cart";
            }

        }

    }
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET,produces = "text/plain;charset=UTF-8")
    public String deleteCart(@PathVariable int id) {
        cartItemService.deleteById(id);
        return "redirect:/cart";

    }
//=============================check out=============================

    @RequestMapping(value = "/checkout", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    public String checkOut(Model model) {
        model.addAttribute("order", new Order());

        return "checkout";
    }

    @PostMapping(value = "/checkout",produces = "text/plain;charset=UTF-8")
    public String checkOut(Model model, HttpSession session , Order order, @RequestParam(name = "payment_method") String payment_method) {
        // Lay account tu session
        AccountEntity account = (AccountEntity) session.getAttribute("account");

        // Lay account Banking By Account Id
        List<AccountBanking> accountBankingList = (List<AccountBanking>) accountBankingService.getAccountBankingByAccountId(account.getId());

        double totalPrice = cartItemService.getAmount(account.getCart().getId());

        // Chek phuong thuc thanh toan
        // Neu la COD
        if (payment_method.equals("COD")) {
            // Check accountBanking
            if (accountBankingList == null || accountBankingList.isEmpty()) {
                model.addAttribute("accountBanking", new AccountBanking());
                return "bankingCart";
                // Check so du
                // Khong du
            } else if (accountBankingList.get(0).getBalance() < totalPrice) {
                model.addAttribute("accountBanking",accountBankingList);
                model.addAttribute("account", account);
                return "fail";
                // du tien
            } else {
                // Lay accountbanking
                AccountBanking accountBanking = accountBankingList.get(0);

                // Lay list cartitem từ database
                List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());

                // Check số lượng
                for (CartItem cart : cartItems) {
                    Product product = productService.findById(cart.getProduct().getId());
                    // Không đủ số lượng
                    if (product.getQuantity() < cart.getQuantity()) {
                        model.addAttribute("cart", cartItems);
                        model.addAttribute("mss", "số lượng k đủ");
                        model.addAttribute("product", product);
                        return "failorder";
                    }else {
                        // Tạo mới order
                        order.setOrderDate(new Date());
                        order.setStatus(PROCESSING);
                        order.setAccount(account);
                        order.setTotal(totalPrice);
                        orderService.save(order);
                        // Trừ số lượng product
                        product.setQuantity(product.getQuantity() - cart.getQuantity());
                        productService.save(product);
                        // Tạo mới OrderDetail
                        OrderDetail orderDetail = new OrderDetail();
                        orderDetail.setQuantity(cart.getQuantity());
                        orderDetail.setPrice(cart.getProduct().getPrice());
                        orderDetail.setProduct(cart.getProduct());
                        orderDetail.setOrder(order);
                        orderDetailService.save(orderDetail);
                    }
                }
                // Đủ số lượng
                // trừ tiền
                accountBanking.setBalance(accountBanking.getBalance() - totalPrice);
                accountBankingService.save(accountBanking);
                // Tạo mới payment
                Payment payment = new Payment();
                payment.setOrder(order);
                payment.setAccountBanking(accountBanking);
                payment.setPayment_date(new Date());
                payment.setAmount(totalPrice);
                paymentService.save(payment);
            }
            List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());
            for (CartItem cart : cartItems) {
                cartItemService.deleteById(cart.getId());
            }

            // Thanh toan bang tien mat
        } else if (payment_method.equals("CASH")) {
            // Lay List cart item
            List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());
            //Check so luong product
            for (CartItem cart : cartItems) {
                Product product = productService.findById(cart.getProduct().getId());
                if (product.getQuantity() < cart.getQuantity()) {
                    model.addAttribute("cartItems", cartItems);
                    model.addAttribute("mss", "số lượng k đủ");
                    model.addAttribute("product", product);
                    return "failorder";
                }
            }
            // Tao moi order
            order.setOrderDate(new Date());
            order.setAccount(account);
            order.setStatus(PROCESSING);
            orderService.save(order);
//
//             Tao moi Payment
            Payment payment = new Payment();
            payment.setOrder(order);
            payment.setPayment_date(new Date());
            payment.setAmount(cartItemService.getAmount(account.getCart().getId()));
            paymentService.save(payment);
            for (CartItem cart : cartItems) {
                // tru so luong product
                Product product = productService.findById(cart.getProduct().getId());
                product.setQuantity(product.getQuantity() - cart.getQuantity());
                productService.save(product);

                //Tao moi orderdetail
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setQuantity(cart.getQuantity());
                orderDetail.setPrice(cart.getProduct().getPrice());
                orderDetail.setProduct(cart.getProduct());
                orderDetail.setOrder(order);
                orderDetailService.save(orderDetail);

                //Xoa cart Item
                cartItemService.deleteById(cart.getId());

            }



            AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
            int id = order.getId();
            String email = accountEntity.getEmail();
            String body = "<h1>WELCOME TO TP TECHNOLOGY</h1>\n" +
                    "<p>Thank you for trusting and using our services </p>\n" +
                    "<p>You can click on the link below to view the order </p>\n"
                    +
                    "http://localhost:8008/project-final-main/user/orderList";
        String subject = "Mail xác nhận ";
        sendEmail(email, subject, body);
        }

        List<OrderDetail> orderDetails = orderDetailService.findByOrderDetailByOrderId(order.getId());
        double total = calculateTotal(orderDetails);
        model.addAttribute("total", total);
        model.addAttribute("account", account);
        model.addAttribute("orderDetails", orderDetails);
        model.addAttribute("order", order);

        String payment_method_display = "";
        if (payment_method.equals("COD")) {
            payment_method_display = "Đã thanh toán qua thẻ";
        } else if (payment_method.equals("CASH")) {
            payment_method_display = "Thanh toán bằng tiền mặt";
        }
        model.addAttribute("payment_method_display", payment_method_display);


        return "success";
    }

    public void sendEmail(String to, String subject, String body) {
        MimeMessage message = javaMailSender.createMimeMessage();
        try {
            MimeMessageHelper helper = new MimeMessageHelper(message, true);
            helper.setFrom("phannhattai14071996@gmail.com");
            helper.setTo(to);
            helper.setSubject(subject);
            helper.setText(body, true);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        javaMailSender.send(message);
    }



























    public double calculateTotal(List<OrderDetail> orderDetails) {
        double total = 0;
        for (OrderDetail orderDetail : orderDetails) {
            total += orderDetail.getQuantity() * orderDetail.getPrice();
        }
        return total;
    }


}
