package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class ProductController {
    @Autowired
    ProductService productService;

    @RequestMapping(value = "product/{id}", method = RequestMethod.GET)
    public String showSingleProduct(Model model, @PathVariable int id) {
        Product product = productService.findById(id);
        model.addAttribute("single", product);
        return "product";
    }

//    @RequestMapping(value = "/getProductPhoto/{id}")
//    public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
//        response.setContentType("image/jpeg");
//
//        Product p = productService.findById(id);
//        byte[] ph = p.getImage();
//        InputStream inputStream = new ByteArrayInputStream(ph);
//        IOUtils.copy(inputStream, response.getOutputStream());
//    }

}
