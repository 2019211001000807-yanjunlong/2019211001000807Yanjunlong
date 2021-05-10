package com.yanjunlong.controller;

import com.yanjunlong.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminHomeServlet", value = "/admin/home")
public class AdminHomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("2");
        HttpSession session =request.getSession(false);
        if(session!=null&&session.getAttribute("user")!=null) {
            System.out.println("1");
            User user=(User) session.getAttribute("user");
            System.out.println(user.getUsername());
            if("admin".equals(user.getUsername().trim())) {
                request.getRequestDispatcher("../WEB-INF/views/admin/index.jsp").forward(request,response);
            }
            else {
                session.invalidate();
                request.setAttribute("message","Unauthorized Access admin module!");
                request.getRequestDispatcher("../WEB-INF/views/login.jsp").forward(request,response);
            }
        }
        else {
            System.out.println("2");
            request.setAttribute("message","Please login as admin!");
            request.getRequestDispatcher("../WEB-INF/views/login.jsp").forward(request,response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("1");
    }
}
