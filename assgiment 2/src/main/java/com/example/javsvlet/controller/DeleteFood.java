package com.example.javsvlet.controller;

import com.example.javsvlet.entity.Food;
import com.example.javsvlet.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteFood extends HttpServlet {
    private JpaRepository<Food> productJpaRepository = new JpaRepository<>(Food.class);

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            Food product = productJpaRepository.findById(id);
            if (product == null){
                resp.getWriter().println("Product not found");
            }else {
                productJpaRepository.delete(id);
                resp.getWriter().println("xóa thành công");
            }
        }catch (Exception e){
            resp.getWriter().println("Bad request");
        }
    }
}
