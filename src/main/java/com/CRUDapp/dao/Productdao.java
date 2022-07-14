package com.CRUDapp.dao;

import com.CRUDapp.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class Productdao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    //Add a product
    @Transactional
    public void createProduct(Product product) {
        this.hibernateTemplate.saveOrUpdate(product);
    }

    //Get all products
    public List<Product> getProducts() {
        List<Product> products = this.hibernateTemplate.loadAll(Product.class);
        return products;
    }

    //Get a single product
    public Product getProduct(int pId) {
        return this.hibernateTemplate.get(Product.class, pId);
    }

    //Delete a product
    @Transactional
    public void deleteProduct(int pId) {
        Product product = this.hibernateTemplate.load(Product.class, pId);
        this.hibernateTemplate.delete(product);
    }
}
