/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    AccountService accountService;

    @RequestMapping("/login")
    public String loginPage(Model model, @RequestParam(value = "error", required = false) boolean error) {

        if (error) {
            model.addAttribute("message", "Login Fail!!!");
        }
        return "login";
    }
    @RequestMapping("/admin/home")
    public String viewHome(Model model) {

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = principal.toString();
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        }

        model.addAttribute("message", "Hello Admin: " + username);
        return "admin/home";
    }

    @RequestMapping("/user/home")
    public String viewHome(Model model, HttpSession session) {

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = principal.toString();

        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
            session.setAttribute("username", username);
        }

        return "user/home";
    }


//    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
//    public String welcomePage(Model model,HttpSession session) {
//        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        String username = principal.toString();
//
//        if (principal instanceof UserDetails) {
//
//            username = ((UserDetails) principal).getUsername();
//            session.setAttribute("username", username);
//        }
//        AccountEntity account = accountService.findByEmail(username);
//        session.setAttribute("account",account);
//        return "home";
//    }
}
