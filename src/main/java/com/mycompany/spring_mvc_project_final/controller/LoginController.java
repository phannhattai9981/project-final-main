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
//    @RequestMapping("/login")
//    public String loginPage(Model model, @RequestParam(value = "error", required = false) boolean error) {
//
//        if (error) {
//            model.addAttribute("message", "Login Fail!!!");
//        }
//        return "login";
//    }

    @GetMapping("/login")
    public String LoginPage(@RequestParam(value = "error", required = false) String error,
                                @RequestParam(value = "BLOCK", required = false) String BLOCK,
                                @RequestParam(value = "UNACTIVE", required = false) String UNACTIVE,
                                Model model) {
        if (error != null) {
            model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
        } else if (BLOCK != null) {
            model.addAttribute("message", "Tài khoản đã bị khóa");
        } else if (UNACTIVE != null) {
            model.addAttribute("message", "Tài khoản chưa được kích hoạt");
        }
        return "login";
    }
//    @PostMapping("/login")
//    public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
//        // tìm kiếm người dùng theo email và mật khẩu
//        AccountEntity account = accountService.findByEmailAndPassword(email, password);
//
//        if (account != null) {
//            // kiểm tra trạng thái của người dùng
//            if (account.getStatus() == UserStatus.BLOCK) {
//                // nếu tài khoản của người dùng bị khóa, chuyển hướng đến trang báo lỗi
//                return "login";
//            } else {
//                // nếu tài khoản của người dùng không bị khóa, đăng nhập thành công và chuyển hướng đến trang chính
//                return "home";
//            }
//        } else {
//            // nếu không tìm thấy người dùng, hiển thị thông báo lỗi và yêu cầu đăng nhập lại
//            model.addAttribute("errorMessage", "Invalid email or password");
//            return "login";
//        }
//    }

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
