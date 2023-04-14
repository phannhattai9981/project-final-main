package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.service.*;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/")
public class ProductController {
    @Autowired
    ProductService productService;

    @Autowired
    CategoryService categoryService;

    @RequestMapping(value = "product/{id}", method = RequestMethod.GET)
    public String showSingleProduct(Model model, @PathVariable int id) {
        Product product = productService.findById(id);
        model.addAttribute("categoryList", (List)categoryService.findAll());
        model.addAttribute("single", product);
        return "product";
    }

    @RequestMapping(value = "/product/getProductPhoto1/{id}")
    public void getProductPhoto1(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
        response.setContentType("image/jpeg");

        Product p = productService.findById(id);
        byte[] ph = p.getImage();
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }




    @RequestMapping(value = "/product/getProductPhoto/{id}/{imageType}")
    public void getProductPhoto(HttpServletResponse response, @PathVariable("id") int id,  @PathVariable("imageType") int imageType) throws Exception {
        response.setContentType("image/jpeg");

        Product p = productService.findById(id);

        byte[] ph = null;
        if (imageType == 1) {
            ph = p.getImage();
        }
        else  if (imageType == 2) {
            ph = p.getImage1();
        }
        else{
            ph = p.getImage2();
        }
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }

}