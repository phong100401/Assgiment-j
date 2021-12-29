package com.example.javsvlet.controller;

import com.example.javsvlet.entity.Category;
import com.example.javsvlet.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListCategory extends HttpServlet {
    JpaRepository<Category> repository = new JpaRepository<>(Category.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categoryList = repository.findAll();
        req.setAttribute("categoryList", categoryList);
        req.getRequestDispatcher("/admin/Category/ListCategory.jsp").forward(req,resp);
    }
}
