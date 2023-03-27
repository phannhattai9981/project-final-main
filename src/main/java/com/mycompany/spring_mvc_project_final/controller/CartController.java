package com.mycompany.spring_mvc_project_final.controller;


import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;


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


    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String showCart(Model model) {
        double total = cartItemService.getAmount();
        model.addAttribute("total", total);
        model.addAttribute("cartItem", cartItemService.findAll());
        return "cart";
    }

    @RequestMapping(value = "/addToCart/{id}", method = RequestMethod.GET)
    public String addToCart(@PathVariable int id) {
        Cart cart = cartService.findById(1);
        Product product = productService.findById(id);

        List<CartItem> cartItemList = cartItemService.findByCartId(1);

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

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
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

    @PostMapping(value = "/checkout")
    public String checkOut(Model model, Order order, @RequestParam(name = "payment_method") String payment_method) {
        AccountBanking accountBanking = accountBankingService.getAccountBankingByAccountId();
        Payment payment = new Payment();
        if(accountBanking == null ){
            return "redirect:/";
        }
        if (payment_method.equals("COD")) {
            AccountEntity account = accountService.findById(1);
            if (accountBanking.getBalance() < cartItemService.getAmount()) {
                model.addAttribute("msg", "khong du tien");
                return "redirect:/";
            } else {
                order.setOrderDate(new Date());
                accountBanking.setBalance(accountBanking.getBalance() - cartItemService.getAmount());
                order.setAccount(account);
                orderService.save(order);
                payment.setOrder(order);
                payment.setAccountBanking(accountBanking);
                paymentService.save(payment);


                List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());
                for (CartItem cart : cartItems) {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setQuantity(cart.getQuantity());
                    orderDetail.setPrice(cart.getProduct().getPrice());
                    orderDetail.setProduct(cart.getProduct());
                    orderDetail.setOrder(order);
                    orderDetailService.save(orderDetail);
                }
            }   cartItemService.deleteAllCartItem();
        }
        if (payment_method.equals("CASH")) {
            AccountEntity account = accountService.findById(1);
            order.setOrderDate(new Date());
            order.setAccount(account);
            orderService.save(order);
            payment.setOrder(order);
            payment.setAccountBanking(accountBanking);
            paymentService.save(payment);
            List<CartItem> cartItems = (List<CartItem>) cartItemService.findAllByCartId(account.getCart().getId());
            for (CartItem cart : cartItems) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setQuantity(cart.getQuantity());
                orderDetail.setPrice(cart.getProduct().getPrice());
                orderDetail.setProduct(cart.getProduct());
                orderDetail.setOrder(order);
                orderDetailService.save(orderDetail);
            }
        }   cartItemService.deleteAllCartItem();
        return "redirect:/";
    }

}

