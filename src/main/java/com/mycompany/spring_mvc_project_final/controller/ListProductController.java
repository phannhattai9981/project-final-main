package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.Category;
import com.mycompany.spring_mvc_project_final.entities.Product;
import com.mycompany.spring_mvc_project_final.service.CategoryService;
import com.mycompany.spring_mvc_project_final.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Optional;

@Controller
public class ListProductController {
    @Autowired
    ProductService productService;

    @Autowired
    CategoryService categoryService;

//    @RequestMapping(value = "/product-list/{id}", method = RequestMethod.GET)
//    public String showSingleProduct(Model model, @PathVariable int id) {
//        List<Product> product = productService.getProdctByCategoryId(id);
//        if (product.isEmpty()) {
//            return "redirect:/";
//        } else {
//            List<Category> categoryList = (List<Category>) categoryService.findAll();
//            model.addAttribute("categoryList", categoryList);
//            model.addAttribute("List", product);
//            return "product-list";
//        }
//    }


//    @GetMapping("/product-list/{id}page{pageId}")
    @GetMapping("/product-list/categoryid={id}page{pageId}")
    public String productListByCategory(@PathVariable(name = "id") int id,@PathVariable  int pageId,Model model) {
        Category category = categoryService.findById(id);
        model.addAttribute("category", category);
        List<Product> products = productService.getProductByCategoryId(id);
        // lấy all product id

        int mountPage = products.size();
        // tạo biến đếm và set all product id

        int countPage = mountPage/10;
        // tạo trang = biến đếm / cho số lượng sản phẩm

        if (mountPage % 10 != 0) {
            countPage++;
        }
        // nếu biến đếm chia cho / 10 mà dư thì trang sẽ ++

        model.addAttribute("countPage",countPage);

        // lấy OFFSET = PageOut, begin 0
        int pageOut = (pageId - 1)*10;
        //Get List OrderDetail by OrderId and set OFFSET = pageOut
        List<Product> products1 = productService.findProductByCategoryId(id, pageOut);
        model.addAttribute("List", products1);
        //Set default previous = 1, set location by pageId
        int previous =1;
        if(pageId != 1) {
            previous = pageId -1;
        }
        //Set next Page
        int next = pageId + 1;
        if (next > countPage) {
            next--;
        }
        model.addAttribute("previous", previous);
        model.addAttribute("next", next);
        return "jsp/product-list";
    }

}
