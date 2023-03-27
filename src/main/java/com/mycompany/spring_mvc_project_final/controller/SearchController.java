//package com.mycompany.spring_mvc_project_final.controller;
//
//import com.mycompany.spring_mvc_project_final.service.ProductService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@Controller
//@RequestMapping(value = "/")
//public class SearchController {
//
//    @Autowired
//    ProductService productService;
//    @Autowired
//    HomeController homeController;
//
//
////    @RequestMapping(value = "/search", method = GET)
////    public String search(@RequestParam("searchInput") Model model, String searchInput) {
////        List<Product> searchList;
////        if (searchInput.isEmpty()) {
////            homeController.showProduct(model);
////            return "home";
////        }
////        else {
////            searchList = productService.findByNameContaining(searchInput);
////        }
////        model.addAttribute("productListTopPhone",searchList);
////        return "home";
////    }
//}
