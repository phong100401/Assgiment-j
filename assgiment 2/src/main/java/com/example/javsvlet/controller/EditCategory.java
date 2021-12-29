package com.example.javsvlet.controller;

import com.example.javsvlet.entity.Category;
import com.example.javsvlet.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EditCategory extends HttpServlet {
    private JpaRepository<Category> categoryJpaRepository = new JpaRepository<>(Category.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            Category category = categoryJpaRepository.findById(id);
            if(category == null){
                resp.getWriter().println("Category not found");
            }else {
                req.setAttribute("category",category);
                req.getRequestDispatcher("/admin/Category/EditCategory.jsp").forward(req,resp);
            }

        }catch (Exception ex){
            resp.getWriter().println("Bad req");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("UTF-8");
            int id = Integer.parseInt(req.getParameter("id"));
            Category category = categoryJpaRepository.findById(id);
            if(category ==null){
                resp.getWriter().println("Category is not found");
            }else {
                String name = req.getParameter("name");
                category.setName(name);
                categoryJpaRepository.update(category);
                resp.sendRedirect("/admin/list-category");
            }
        }catch (Exception ex){
            resp.getWriter().println("Fail req");
        }
    }
}
