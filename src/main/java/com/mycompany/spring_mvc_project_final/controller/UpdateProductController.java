package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.service.CategoryService;
import com.mycompany.spring_mvc_project_final.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class UpdateProductController {
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;

    @Autowired
    AddProductController addProductController;

    @RequestMapping(value = "/update/{id}", method = GET)
    public String showEditProduct(Model model, @PathVariable int id) {
        model.addAttribute("product",  productService.findById(id));
        model.addAttribute("msg", "Chỉnh sửa sản phẩm");
        model.addAttribute("action", "updateProduct");
        model.addAttribute("type", "update");
        addProductController.setCategoryDropDownList(model);
        return "editproduct";
    }

    @RequestMapping(value = "/update/updateProduct", method = POST)
    public String updateProduct ( Model model, Product product) {
        product.setProductDate(new Date());
        productService.save(product);
        return "redirect:/manager";
    }
}
