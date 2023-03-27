package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.Category;
import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.service.CategoryService;
import com.mycompany.spring_mvc_project_final.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping(value = "/")
public class HomeController {
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;
//    @Autowired
//    SearchController searchController;


    @RequestMapping(method = GET)
    public String showProduct(Model model) {
        List<Product> productListTopPhone = (List<Product>) productService.showTopPhone();
        model.addAttribute("productListTopPhone", productListTopPhone);
        List<Product> showTopTapLet = (List<Product>) productService.showTopTapLet();
        model.addAttribute("showTopTapLet", showTopTapLet);
        List<Product> productListTopLaptop = (List<Product>) productService.showTopLaptop();
        model.addAttribute("productListTopLaptop", productListTopLaptop);
        List<Product> productListDH = (List<Product>) productService.showTopDH();
        model.addAttribute("productListDH", productListDH);
        List<Category> categoryList = (List<Category>) categoryService.findAll();
        model.addAttribute("categoryList", categoryList);
        List<Product> top1Product = productService.showTop1();
        model.addAttribute("ListTop1", top1Product);
        List<Product> top4Product = productService.showTop4();
        model.addAttribute("ListTop4", top4Product);
        return "jsp/home";
    }



//    @RequestMapping(value = "/cart")
//    public String index(){
//        return "cart";
//    }

//    @RequestMapping(value = "/newProduct", method = GET)
//    public String showNewProduct(Model model) {
//        model.addAttribute("product", new Product());
//        model.addAttribute("msg", "Add a new Product");
//        model.addAttribute("action", "newProduct");
//
//        setCategoryDropDownList(model);
//        return "home";
//    }


//    @RequestMapping(value = "/newProduct", method = POST, produces = "text/plain;charset=UTF-8")
//        public String saveProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model) {
//
//
//        if (result.hasErrors()) {
//            setCategoryDropDownList(model);
//            return "home";
//        }
//        productService.save(product);
//
//        return "redirect:/";
//    }


}
