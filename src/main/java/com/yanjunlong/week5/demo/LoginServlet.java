package com.yanjunlong.week5.demo;

import javax.print.attribute.standard.JobOriginatingUserName;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/Login")
public class LoginServlet extends HttpServlet {
    Connection con=null;
    @Override
    public void init() throws ServletException{
        super.init();
        con = (Connection) getServletContext().getAttribute("con");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        String Username=request.getParameter("Username");
        String Password=request.getParameter("Password");
        String sql="select id,username,password,email,sex,data form usertable";
        try{
            ResultSet rs=con.createStatement().executeQuery(sql);
            if(rs.next()){

                request.setAttribute("Username",rs.getInt("id"));
                request.setAttribute("username",rs.getString("username"));
                request.setAttribute("password",rs.getString("password"));
                request.setAttribute("email",rs.getString("email"));
                request.setAttribute("sex",rs.getString("sex"));
                request.setAttribute("data",rs.getString("data"));

                request.getRequestDispatcher("userInfo,jsp").forward(request,response);


            }else{
                request.setAttribute("massage","username or password Error!!!");
                request.getRequestDispatcher("Login.jsp").forward(request,response);


            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        writer.println("<br>Username :"+Username);
        writer.println("<br>Password :"+Password);


    }
}
