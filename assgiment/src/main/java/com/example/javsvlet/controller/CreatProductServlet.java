package com.example.javsvlet.controller;

import com.example.javsvlet.entity.Product;
import com.example.javsvlet.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

public class CreatProductServlet extends HttpServlet {

    private JpaRepository<Product> productJpaRepository = new JpaRepository<>(Product.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/product/creat.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("UTF-8");
            //lấy dữ liệu
            String name = req.getParameter("name");
            String thumbnail =req.getParameter("thumbnail");
            String description =req.getParameter("description");
            double price = Double.parseDouble(req.getParameter("price"));
            int status = Integer.parseInt(req.getParameter("status"));

            Product product = new Product(name,description,thumbnail,price,status);

            productJpaRepository.save(product);

            resp.sendRedirect("/admin/product/list");
        }catch (Exception ex){
            resp.getWriter().println("Fail rq");
        }
    }
}
