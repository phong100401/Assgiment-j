package com.example.javsvlet.util;

import com.example.javsvlet.entity.Product;
import com.example.javsvlet.repository.JpaRepository;

import java.util.ArrayList;
import java.util.List;

public class Example {
    public static void main(String[] args){
        JpaRepository<Product> productJpaRepository = new JpaRepository<>(Product.class);
//        Product p = new Product();
//        p.setName("Sản phẩm x1");
//        p.setPrice(1000000);
//        p.setThumbnail("anh.png");
//        p.setDescription("Sản phẩm x1");
//        p.setStatus(1);
//        productJpaRepository.save(p);
//        List<Product> list = productJpaRepository.findAll();
//        for (Product product: list
//             ) {
//            System.out.println(product.toString());
//        }
        productJpaRepository.delete(1);
    }

}
