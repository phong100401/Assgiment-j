package com.example.javsvlet.controller;

import com.example.javsvlet.entity.Product;
import com.example.javsvlet.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ListProductServlet extends HttpServlet {

    public static ArrayList<Product> list = new ArrayList<>();

    private JpaRepository<Product> productJpaRepository = new JpaRepository<>(Product.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> list = productJpaRepository.findAll();
        req.setAttribute("list" , list);
        req.getRequestDispatcher("/admin/product/list.jsp").forward(req,resp);
    }
}
