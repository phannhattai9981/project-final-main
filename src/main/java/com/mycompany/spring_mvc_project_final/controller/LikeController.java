package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import com.mycompany.spring_mvc_project_final.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/")
public class LikeController {

    @Autowired
    AccountService accountService;

    @Autowired
    ProductService productService;

    @RequestMapping(value = "/addLike/{id}", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    public String addToCart(@PathVariable int id, HttpSession session, Model model) {
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        if (accountEntity == null) {
            return "redirect:/login";
        } else {
            Product product = productService.findById(id);
            product.setLove(product.getLove() + 1);
            productService.save(product);
            return "redirect:/";
        }
    }
}
