package com.example.javsvlet.controller;

import com.example.javsvlet.entity.Phone;
import com.example.javsvlet.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListPhone extends HttpServlet {
    JpaRepository<Phone> phoneJpaRepository = new JpaRepository<>(Phone.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Phone> phoneList =phoneJpaRepository.findAll();
        req.setAttribute("list",phoneList);
        req.getRequestDispatcher("/admin/product/list.jsp").forward(req,resp);
    }
}
