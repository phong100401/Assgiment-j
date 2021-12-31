package com.example.javsvlet.controller;

import com.example.javsvlet.entity.Phone;
import com.example.javsvlet.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreatePhone extends HttpServlet {
    JpaRepository<Phone> phoneJpaRepository = new JpaRepository<>(Phone.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/product/addphone.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            req.setCharacterEncoding("UTF-8");
            String name = String.valueOf(req.getParameter("name"));
            String Description = String.valueOf(req.getParameter("description"));
            int status = Integer.parseInt(req.getParameter("status"));
            double price = Double.parseDouble(req.getParameter("price"));
            String Brand = String.valueOf(req.getParameter("brand"));
            Phone phone = new Phone(name,Description,price,Brand,status);
            phoneJpaRepository.save(phone);
            resp.sendRedirect("/admin/list-phone");
        }catch (Exception ex){
            resp.getWriter().println("bad rq");
        }
    }
}
