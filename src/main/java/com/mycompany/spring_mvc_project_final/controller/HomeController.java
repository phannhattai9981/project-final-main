package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import com.mycompany.spring_mvc_project_final.service.CategoryService;
import com.mycompany.spring_mvc_project_final.service.ProductService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping(value = "/")
public class HomeController {
    @Autowired
    ProductService productService;
    @Autowired
    AccountService accountService;
    @Autowired
    CategoryService categoryService;
//    @Autowired
//    SearchController searchController;


    @RequestMapping(method = GET)
    public String showProduct(Model model, HttpSession session) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
      String username = principal.toString();

     if (principal instanceof UserDetails) {

            username = ((UserDetails) principal).getUsername();
            session.setAttribute("username", username);
        }
        AccountEntity account = accountService.findByEmail(username);
        session.setAttribute("account",account);

        model.addAttribute("ListTop4",(List)productService.showTop4());
        model.addAttribute("productListTopPhone", (List)productService.showTopPhone());
        model.addAttribute("productListTopTablet", (List)productService.showTopTapLet());
        model.addAttribute("productListTopLaptop", (List)productService.showTopLaptop());
        model.addAttribute("productListTopDH", (List)productService.showTopDH());
        model.addAttribute("categoryList", (List)categoryService.findAll());

        return "home";
    }
    @RequestMapping(value = "/bh", method = RequestMethod.GET)
    public String showBh (Model model) {
        model.addAttribute("categoryList", (List)categoryService.findAll());
        return "pagebh";
    }

    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public String showBlog (Model model) {
        model.addAttribute("categoryList", (List)categoryService.findAll());
        return "blog";
    }

    @RequestMapping(value = "/search1", method = RequestMethod.GET)
    public String search(@RequestParam("searchInput") String searchInput, Model model, RedirectAttributes redirectAttributes) {
        List<Product> searchList;
        if (searchInput.isEmpty()) {
            return "redirect:/";
        } else {
            searchList = productService.findByNameContaining(searchInput);
        }
        model.addAttribute("List",searchList);
        model.addAttribute("categoryList", (List)categoryService.findAll());
        return "product-list";
    }

    @RequestMapping(value = "/getPhotoAccount/{id}")
    public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
        response.setContentType("image/jpeg");

        AccountEntity p = accountService.findById(id);
        byte[] ph = p.getAvatar();
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }

}
