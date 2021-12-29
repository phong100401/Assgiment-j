package com.example.javsvlet.controller;

import com.example.javsvlet.entity.Category;
import com.example.javsvlet.entity.Food;
import com.example.javsvlet.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class CreatNewFood extends HttpServlet {
    private JpaRepository<Food> repositoryFood = new JpaRepository<>(Food.class);

    private JpaRepository<Category> repositoryCategory = new JpaRepository<>(Category.class);


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categories = repositoryCategory.findAll();
        req.setAttribute("categories",categories);
        req.getRequestDispatcher("/admin/Food/Create-food.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("UTF-8");
            String Name = String.valueOf(req.getParameter("name"));
            String Description = String.valueOf(req.getParameter("description"));
            String Thumbnail = String.valueOf(req.getParameter("image"));
            int status = Integer.parseInt(req.getParameter("status"));
            double price = Double.parseDouble(req.getParameter("price"));
            int categoryId = Integer.parseInt(req.getParameter("category"));
            Date created_at = new Date();
            Food product = new Food(Name, price, Description, Thumbnail, status, created_at, categoryId);
            if(product.isValid()){
                repositoryFood.save(product);
                resp.sendRedirect("/admin/list-food");
            }else {
                HashMap<String, String> errors = product.getError();
                req.setAttribute("errors",errors);
                req.setAttribute("product", product);
                List<Category> categories = repositoryCategory.findAll();
                req.setAttribute("categories",categories);
                req.getRequestDispatcher("/admin/Food/Create-food.jsp").forward(req,resp);
            }

        } catch (Exception ex) {
            resp.getWriter().println("Bad request");
        }
    }
}
