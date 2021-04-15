package com.yanjunlong.week5.demo;

import com.yanjunlong.dao.Userdao;
import com.yanjunlong.model.User;

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
//        try {
//            Class.forName(getServletConfig().getServletContext().getInitParameter("driver"));
//            dbConn= DriverManager.getConnection(getServletConfig().getServletContext().getInitParameter("url"),getServletConfig().getServletContext().getInitParameter("Username"),getServletConfig().getServletContext().getInitParameter("Password"));
//            System.out.println(dbConn);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
        con=(Connection)getServletContext().getAttribute("con");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //request.getRequestDispatcher("WEB-IFN/views/login.jsp").forward(request,response);
        request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        String Username=request.getParameter("username");
        String Password=request.getParameter("password");

        Userdao userdao=new Userdao();
        try {
            User user =userdao.findByUsernamePassword(con,Username,Password);
            if (user!=null){
                request.getRequestDispatcher("WEB-INF/views/userInfo.jsp").forward(request,response);
            }else {
                request.setAttribute("massage","username or password Error!!!");
                request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request,response);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        /*String sql="select id,username,password,email,sex,Birthdate form usertable where username='"+username+"'and password='"+password+"'";
        try{
            ResultSet rs=con.createStatement().executeQuery(sql);
            if(rs.next()){

                request.setAttribute("Username",rs.getInt("id"));
                request.setAttribute("username",rs.getString("username"));
                request.setAttribute("password",rs.getString("password"));
                request.setAttribute("email",rs.getString("email"));
                request.setAttribute("sex",rs.getString("sex"));
                request.setAttribute("date",rs.getString("date"));

                request.getRequestDispatcher("userInfo,jsp").forward(request,response);


            }else{
                request.setAttribute("massage","username or password Error!!!");
                request.getRequestDispatcher("login.jsp").forward(request,response);


            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


         */
        writer.println("<br>Username :"+Username);
        writer.println("<br>Password :"+Password);


    }
}
