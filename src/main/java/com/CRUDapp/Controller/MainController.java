package com.CRUDapp.Controller;

import com.CRUDapp.dao.Productdao;
import com.CRUDapp.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private Productdao productdao;

    @RequestMapping("/")
    public String home(Model model) {
        List<Product> products = productdao.getProducts();
        model.addAttribute("products", products);
        return "index";
    }


    //Show add product form
    @RequestMapping("/add-product")
    public String addProduct(Model model) {
        model.addAttribute("title", "Add Product");
        return "add-product-form";
    }

    //Handle add product form
    @RequestMapping(path = "/handle-product", method = RequestMethod.POST)
    public RedirectView handleForm(@ModelAttribute Product product, HttpServletRequest request) {
//        System.out.println(product);
        productdao.createProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }

    //Delete handler
    @RequestMapping("/delete/{productId}")
    public RedirectView deleteHandler(@PathVariable("productId") int productId, HttpServletRequest request) {
        productdao.deleteProduct(productId);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }

    //Update
    @RequestMapping("/update/{productId}")
    public String update(@PathVariable("productId") int pid, Model model) {
        Product product = this.productdao.getProduct(pid);
        model.addAttribute("product", product);
        return "update-form";
    }
}
