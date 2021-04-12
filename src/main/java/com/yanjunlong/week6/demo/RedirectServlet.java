package com.yanjunlong.week6.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RedirectServlet", value = "/redirect")
public class RedirectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //redirect - same server - Relative
        //1. start without /
        System.out.println("before redirect");

        //response.sendRedirect("index.jsp");//url--change to index.jsp
        //http://localhost:8080/2019211001000807yanjunlong_war/redirect
        //http://localhost:8080/2019211001000807yanjunlong_war/index.jsp
        //see the url - only last part of url changed ( redirect --> index.jsp)

        System.out.println("after redirect");
        //2. start with /
        //response.sendRedirect("/2019211001000807yanjunlong_war/index.jsp");//-???
        //why ? - look at url
        //http://localhost:8080/2019211001000807yanjunlong_war/redirect
        //http://localhost:8080/index.jsp
        //redirect - another server - Absolute URL
        //url change after 8080 - means tomcat
        //add 2019211001000807yanjunlong_war/

        //redirect - another server - Absolute URL
        response.sendRedirect("https://www.baidu.com/");
        //https://www.baidu.com/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }
}
