package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.enums.OrderStatus;
import com.mycompany.spring_mvc_project_final.enums.UserStatus;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import com.mycompany.spring_mvc_project_final.service.*;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import static com.mycompany.spring_mvc_project_final.enums.OrderStatus.CANCEL;
import static com.mycompany.spring_mvc_project_final.enums.OrderStatus.SUCCESSFULL;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/admin")
public class AccountController {

    @Autowired
    private OrderService orderService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;
    @Autowired
   PaymentService paymentService;


    // trang quản lý thông tin cá nhân của admin//
    @GetMapping("/admin_InfoView")
    public String viewInfoView(Model model, HttpSession session) {
        AccountEntity accountEntity = (AccountEntity) session.getAttribute("account");
        model.addAttribute("account", accountEntity);
        model.addAttribute("type", "user");
        return "admin";
    }
    @RequestMapping(value = "update/admin/profile{id}", method = GET)
    public String showEditProfile(@PathVariable int id, Model model, HttpSession session) {
        AccountEntity editProfile = (AccountEntity) session.getAttribute("account");
        model.addAttribute("editProfile", editProfile);
        return "profileAdmin";
    }

    @RequestMapping(value = "/update/admin/avatar", method = POST)
    public @ResponseBody String updateAvatar(HttpSession session,
                                             @RequestParam("image") MultipartFile file) throws IOException {
        AccountEntity editProfile = (AccountEntity) session.getAttribute("account");
        editProfile.setAvatar(file.getBytes());
        accountService.save(editProfile);
        return "success";
    }

    @RequestMapping(value = "update/admin/updateProfile", method = POST,
            consumes = MediaType.MULTIPART_FORM_DATA_VALUE,
            produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, "text/plain;charset=UTF-8"})

    public String save(@RequestParam("id") int id, Model model,
                       @RequestParam("fullName") String name,
                       @RequestParam("phone") String phone,
                       @RequestParam("email") String email, HttpSession session, RedirectAttributes redirectAttributes) throws IOException {
        AccountEntity account = accountService.findById(id);
        account.setFullName(name);
        account.setPhone(phone);
        session.setAttribute("account", account);
        accountService.save(account);
        redirectAttributes.addFlashAttribute("account", account);
        redirectAttributes.addFlashAttribute("type", "update");

        return "redirect:/admin/admin_InfoView";
    }

    @RequestMapping(value = "/getPhotoAccount/{id}")
    public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
        response.setContentType("image/jpeg");

        AccountEntity p = accountService.findById(id);
        byte[] ph = p.getAvatar();
        InputStream inputStream = new ByteArrayInputStream(ph);
        IOUtils.copy(inputStream, response.getOutputStream());
    }


    /// KẾT THÚC TRANG QUẢN LÝ THÔNG TIN CÁ NHÂN ////




// <=========== QUẢN LÝ USER ======>///

    @GetMapping("/full_account")
    public String showAccounts(Model model) {
        List<AccountEntity> accountEntityList = accountService.getAllAccountsExceptAdmin();
        model.addAttribute("accountEntityList", accountEntityList);
        return "account";
    }

    @GetMapping("removeAccount{id}")
    public String deteleAccount(@PathVariable int id, Model model, HttpSession session) {
        AccountEntity account = accountService.findById(id);
        if (!(account == null)) {
            account.setStatus(UserStatus.BLOCK);
            accountService.save(account);
        }

        List<AccountEntity> accountEntityList = (List<AccountEntity>) accountService.getAllAccountsExceptAdmin();
        model.addAttribute("accountEntityList", accountEntityList);
        return "account";
    }

    @GetMapping("unBlockAccount{id}")
    public String unBlockAccount(@PathVariable int id, Model model, HttpSession session) {
        AccountEntity account = accountService.findById(id);
        if (!(account == null)) {
            account.setStatus(UserStatus.ACTIVE);
            accountService.save(account);
        }
        List<AccountEntity> accountEntityList = (List<AccountEntity>) accountService.getAllAccountsExceptAdmin();
        model.addAttribute("accountEntityList", accountEntityList);
        return "account";
    }
    //<========== kết thúc  quản lý user========>>///



//< ==========QUẢN LÝ ĐƠN HÀNG CÓ TRONG HỆ THỐNG ========>////


    //SHOW ĐƠN
    @GetMapping("/listFullOrder")
    public String showOrders(Model model) {
        List<Order> orderFullList = orderService.findAll();
        model.addAttribute("orderFullList", orderFullList);
        return "orderFullList";
    }

    // ĐANG GIAO
    @GetMapping("/deteleListFullOrder{id}")
    public String detelelistFullOrder(@PathVariable int id, Model model) {
        Order order = orderService.findById(id);
        if (!(order == null)) {
            order.setStatus(OrderStatus.DELIVERY);
            orderService.save(order);
        }
        List<Order> orderFullList = (List<Order>) orderService.findAll();
        model.addAttribute("orderFullList", orderFullList);
        return "orderFullList";
    }

    // HỦY ĐƠN
    @GetMapping("/detele1ListFullOrder{id}")
    public String detele1listFullOrder(@PathVariable int id, Model model) {
        Order order = orderService.findById(id);
        if (!(order == null)) {
            order.setStatus(CANCEL);
            orderService.save(order);
        }
        List<Order> orderFullList = (List<Order>) orderService.findAll();
        model.addAttribute("orderFullList", orderFullList);
        return "orderFullList";
    }


    // SHIPER GIAO THÀNH CÔNG
    @GetMapping("/successful{id}")
    public String shipper(@PathVariable int id, Model model) {
        Order order = orderService.findById(id);
        if (order != null) {
            order.setStatus(SUCCESSFULL);
            orderService.save(order);
            int ids = paymentService.findByOrderId(order.getId()).getId();
            paymentService.deleteById(ids);
            }
        List<Order> orderFullList = (List<Order>) orderService.findAll();
        model.addAttribute("orderFullList", orderFullList);

        return "orderFullList";
    }













    //CHI TIẾT ĐƠN HÀNG
    @GetMapping("/orderListDetaile{id}")
    public String viewCartOfCustomer(@PathVariable int id, Model model) {
        List<OrderDetail> orderDetails = orderDetailService.findByOrderDetailByOrderId(id);
        double total = calculateTotal(orderDetails);
        model.addAttribute("total", total);
        model.addAttribute("orderListDetaile", orderDetails);
        return "orderListDetaile";
    }

    //< ========== KẾT THÚC  QUẢN LÝ ĐƠN HÀNG CÓ TRONG HỆ THỐNG ========>////





//<=========QUẢN LÝ SẢN PHẨM =========>>>>

    @GetMapping("/manageproduct{pageId}")
    public String productListManager(@PathVariable(name="pageId") int pageId,Model model) {
        List<Product> products = (List<Product>) productService.findAll();
        // lấy all product

        int mountPage = products.size();
        // tạo biến đếm và set all product

        int countPage = mountPage/20;
        // tạo trang = biến đếm / cho số lượng sản phẩm

        if (mountPage % 20 != 0) {
            countPage++;
        }
        // nếu biến đếm chia cho / 10 mà dư thì trang sẽ ++

        model.addAttribute("countPage",countPage);

        // lấy OFFSET = PageOut, begin 0
        int pageOut = (pageId - 1)*20;
        //Get List OrderDetail by OrderId and set OFFSET = pageOut
        List<Product> products1 = (List<Product>) productService.getProduct(pageOut);
        model.addAttribute("managerList", products1);
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
        return "manager";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(@RequestParam("searchInput") String searchInput, Model model) {
        List<Product> searchList;
        if (searchInput.isEmpty()) {
            return "redirect:/manager";
        } else {
            searchList = productService.findByNameContaining(searchInput);
        }
        model.addAttribute("managerList", searchList);
        return "admin/manager";
    }

    @RequestMapping(value = "/deleteProduct/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable int id,RedirectAttributes redirectAttributes) {
        try{
            productService.deleteById(id);
            redirectAttributes.addFlashAttribute("message", "Xóa sản phẩm thành công");
            return "redirect:/admin/manageproduct1";

        }catch(Exception e){
            redirectAttributes.addFlashAttribute("message", "sản phảm đang được đặt");
            return ("redirect:/admin/manageproduct1");
        }
    }


////KẾT THÚC TRANG QUẢN LÝ SẢN PHẨM////////




    //// DOANH THU//////
    @GetMapping("/revenue")
    public String revenue(Model model,OrderDetail orderDetails,AccountEntity account) {
            List<OrderDetail> revenuelist = orderDetailService.findSuccessfulOrderDetails();
             double total = calculateTotal(revenuelist);
             model.addAttribute("total", total);
            model.addAttribute("revenuelist", revenuelist);
            return "revenuelist";
    }




/////QUẢN LÝ LOẠI SẢN PHẨM
    @RequestMapping(value = "/showCategory", method = GET)
    public String showCategory(Model model) {
        List<Category> categoryList = (List<Category>) categoryService.findAll();
        model.addAttribute("categoryList", categoryList);
        return "category";
    }
    @RequestMapping(value = "/addCategory", method = GET)
    public String showNewCategory(Model model) {
        model.addAttribute("category", new Category());
        model.addAttribute("msg", "Thêm Danh Mục");
        model.addAttribute("action", "addNewCategory");
        model.addAttribute("type", "add Category");

        return "editcategory";
    }
    @RequestMapping(value = "/addNewCategory", method = POST)
    public String saveNewCategory(Category category, Model model ){
        categoryService.save(category);
        return "redirect:/admin/showCategory";
    }

    @RequestMapping(value = "/upCategory/{id}", method = GET)
    public String showCategoryById(Model model, @PathVariable int id) {
        model.addAttribute("category", categoryService.findById(id));
        model.addAttribute("msg", "Chỉnh Sửa Danh Mục");
        model.addAttribute("action", "updateCategory");
        model.addAttribute("type", "updateCategory");

        return "editcategory";
    }
    @RequestMapping(value = "/upCategory/updateCategory", method = POST)
    public String saveCategory(Category category, Model model ){
        categoryService.save(category);
        return "redirect:/admin/showCategory";
    }

    @RequestMapping(value = "/deleteCategory/{id}", method = RequestMethod.GET)
    public String deleteCategory(@PathVariable int id) {
        categoryService.deleteById(id);
        return "redirect:/admin/showCategory";

    }


    public double calculateTotal(List<OrderDetail> orderDetails) {
        double total = 0;
        for (OrderDetail orderDetail : orderDetails) {
            total += orderDetail.getQuantity() * orderDetail.getPrice();
        }
        return total;
    }
}


