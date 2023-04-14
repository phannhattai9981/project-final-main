package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.entities.Category;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class ListProductController {
    @Autowired
    ProductService productService;

    @Autowired
    CategoryService categoryService;
    @Autowired
    AccountService accountService;
    @RequestMapping(method = GET)
    public String showlistProduct(Model model, HttpSession session) {
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


    @GetMapping("/categoryid={id}page{pageId}")
    public String productListByCategory(@PathVariable(name = "id") int id,@PathVariable  int pageId,Model model) {
        Category category = categoryService.findById(id);
        model.addAttribute("category", category);
        List<Product> products = productService.getProductByCategoryId(id);
        // lấy all product id

        int mountPage = products.size();
        // tạo biến đếm và set all product id

        int countPage = mountPage/12;
        // tạo trang = biến đếm / cho số lượng sản phẩm

        if (mountPage % 12 != 0) {
            countPage++;
        }
        // nếu biến đếm chia cho / 10 mà dư thì trang sẽ ++

        model.addAttribute("countPage",countPage);

        // lấy OFFSET = PageOut, begin 0
        int pageOut = (pageId - 1)*12;
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
        model.addAttribute("categoryList", (List)categoryService.findAll());
        return "product-list";
    }

    @RequestMapping(value = "/product-list/getProductPhoto/{id}")
    public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
        response.setContentType("image/jpeg");

        Product p = productService.findById(id);
        byte[] ph = p.getImage();
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }

}
