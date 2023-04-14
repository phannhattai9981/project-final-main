/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    AccountService accountService;
    @RequestMapping("/login")
    public String loginPage(Model model, @RequestParam(value = "error", required = false) boolean error) {

        if (error) {
            model.addAttribute("message", "Đăng nhập không thành công");
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
//    @GetMapping("/login")
//    public String LoginPage(@RequestParam(value = "error", required = false) String error,
//                                @RequestParam(value = "BLOCK", required = false) String BLOCK,
//                                @RequestParam(value = "UNACTIVE", required = false) String UNACTIVE,
//                                Model model) {
//        if (error != null) {
//            model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
//        } else if (BLOCK != null) {
//            model.addAttribute("message", "Tài khoản đã bị khóa");
//        } else if (UNACTIVE != null) {
//            model.addAttribute("message", "Tài khoản chưa được kích hoạt");
//        }
//        return "login";
//    }



}
