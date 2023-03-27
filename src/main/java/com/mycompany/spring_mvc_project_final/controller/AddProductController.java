package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.Category;
import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.service.CategoryService;
import com.mycompany.spring_mvc_project_final.service.ProductService;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping(value = "/")
public class AddProductController {
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;

    @RequestMapping(value = "/add", method = GET)
    public String showNewProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("msg", "Thêm sản phẩm");
        model.addAttribute("action", "add_image");
        model.addAttribute("type", "Add New Book");

        setCategoryDropDownList(model);

        return "editproduct";
    }



    @RequestMapping(value = "/add_image", method = RequestMethod.POST,
            consumes = MediaType.MULTIPART_FORM_DATA_VALUE,
            produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, "text/plain;charset=UTF-8"} )
    public ModelAndView save(@RequestParam("name") String name,
                             @RequestPart("photo") MultipartFile photo,
                             Product product) {
        try {
            product.setName(name);
            product.setImage(photo.getBytes());
            productService.save(product);
            return new ModelAndView( "redirect:/manager");
            //return new ModelAndView("stu", "msg", "Records succesfully inserted into database.");

        } catch (Exception e) {
            return new ModelAndView("redirect:/add", "msg", "Error: " + e.getMessage());
        }
    }

    @RequestMapping(value = "/getProductPhoto/{id}")
    public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
        response.setContentType("image/jpeg");

        Product p = productService.findById(id);
        byte[] ph = p.getImage();
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }

    public void setCategoryDropDownList(Model model) {
        List<Category> cateList = (List<Category>)categoryService.findAll();
        if (!cateList.isEmpty()) {
            Map<Integer, String> cateMap = new LinkedHashMap<>();
            for (Category category: cateList) {
                cateMap.put(category.getId(), category.getName());
            }
            model.addAttribute("categoryList", cateMap);
        }
    }
}
