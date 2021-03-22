package com.yanjunlong.week3.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

//automatic - new --> servlet
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// request come here-<form method=post>
        //get parameter from request
        String username = request.getParameter( "username");//name of input type - <input type="text" name="username">
        String password = request.getParameter( "password");//<input type="password" name="password" required minlength="8">
        String email = request.getParameter( "email");//<input type="email" name="email">
        String sex = request.getParameter( "sex");//<input type="radio" name="sex">
        String date = request.getParameter( "date");//<input type="date" name="date">
        //print - writer into response
        PrintWriter writer = response.getWriter();
        writer.println("<br>username :"+username);
        writer.println("<br>password :"+password);
        writer.println("<br>email :"+email);
        writer.println("<br>sex"+sex);
        writer.println("<br>date"+date);
        writer.close();
    }
}
