package com.yanjunlong.week5.demo;

import javax.print.attribute.standard.JobOriginatingUserName;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/Login")
public class LoginServlet extends HttpServlet {
    @Override
    public void init() throws ServletException{
        super.init();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Username=request.getParameter("Username");
        String Password=request.getParameter("Password");
        PrintWriter writer = response.getWriter();
        writer.println("<br>Username :"+Username);
        writer.println("<br>Password :"+Password);


    }
}
