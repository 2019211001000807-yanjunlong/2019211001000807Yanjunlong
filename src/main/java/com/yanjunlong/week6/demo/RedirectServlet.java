package com.yanjunlong.week6.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RedirectServlet", value = "/redirect")
public class RedirectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String sel=request.getParameter("search");
        String sea=request.getParameter("txt");
        System.out.println(sel);
        if(sel.equals("baidu")) {
            response.sendRedirect("https://www.baidu.com/s?wd="+sea);
        }
        if(sel.equals("bing")) {
            response.sendRedirect("https://cn.bing.com/search?q="+sea);
        }
        if(sel.equals("google")) {
            response.sendRedirect("https://www.google.com/search?q="+sea);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }
}
