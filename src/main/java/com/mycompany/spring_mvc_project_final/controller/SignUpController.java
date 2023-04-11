package com.mycompany.spring_mvc_project_final.controller;


import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.entities.Cart;
import com.mycompany.spring_mvc_project_final.entities.RoleEntity;
import com.mycompany.spring_mvc_project_final.enums.UserStatus;
import com.mycompany.spring_mvc_project_final.repository.RoleRepository;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import com.mycompany.spring_mvc_project_final.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import static com.mycompany.spring_mvc_project_final.enums.Role.ROLE_USER;

@Controller
public class SignUpController {
    @PersistenceContext
    private EntityManager entityManager;
    @Autowired
    AccountService accountService;
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    CartService cartService;
    @Autowired
    MailSender mailSender;
    @Autowired
    private JavaMailSender javaMailSender;

    @GetMapping("/signup")
    public String signUpPage(Model model, @RequestParam(value = "error", required = false) boolean error) {
        if (error) {
            model.addAttribute("message", "Login Fail!!!");
        }
        model.addAttribute("newAccount", new AccountEntity());
        return "signup";

    }

    @PostMapping("signup")
    public  String signUp (@ModelAttribute(name = "newAccount") AccountEntity accountEntity, Model model, @RequestParam String password_two) {
        if(!accountEntity.getPassword().equals(password_two)) {
        }
        if (accountService.findByEmail(accountEntity.getEmail()) != null) {
            model.addAttribute("message", "Tài khoản đã tồn tại");
            return "signup";
        }
        // Encoder password
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        accountEntity.setPassword(encoder.encode(accountEntity.getPassword()));

        RoleEntity role = new RoleEntity();
        role.setRole(ROLE_USER);
        role.setId(2);

        Set<RoleEntity> roles = new HashSet<>();
        roles.add(role);
        accountEntity.setUserRoles(roles);
        accountEntity.setStatus(UserStatus.UNACTIVE);
        accountEntity.setRegistration_date(new Date());
        accountService.save(accountEntity);

        Cart cart1 = new Cart();
        cart1.setAccount(accountEntity);
        cartService.save(cart1);
        int id = accountEntity.getId();

        String email = accountEntity.getEmail();
        String body = "<h1>CHÀO MỪNG BẠN ĐẾN VỚI TP TECHNOLOGY</h1>\n" +
                "<p>Để kích hoạt tài khoản bạn vui lòng click vào link bên dưới </p>\n" +
               "http://localhost:8020/project-final-main/activate?id="+id;
        String subject = "Mail kích hoạt";
        sendEmail(email, subject, body);
      model.addAttribute("accountEntity", accountEntity);


        return "login";
    }

    @GetMapping("/activate")
    public String activate(@RequestParam("id") int id, Model model) {
        AccountEntity accountEntity = accountService.findById(id);
        if (accountEntity != null) {
            accountEntity.setStatus(UserStatus.ACTIVE);
            accountService.save(accountEntity);
            // add any necessary attributes to the model
            return "login";
        } else {
            // add any necessary attributes to the model
            return "signup";
        }
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
}