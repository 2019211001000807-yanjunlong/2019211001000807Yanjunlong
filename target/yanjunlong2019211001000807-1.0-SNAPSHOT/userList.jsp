<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: ALIENWARE
  Date: 2021/4/12
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%@ page import="java.sql.ResultSet" %>
<h1>User</h1>
<table border=1>
    <tr>
        <td>id</td>
        <td>username</td>
        <td>password</td>
        <td>email</td>
        <td>sex</td>
        <td>date</td>
    </tr>
<%
        //get rs from request attribute
        ResultSet rs=(ResultSet) request.getAttribute("rsname");
        if(rs==null){
%>
    <tr>
<td>No Data!!!</td>
    </tr>
    <%}else {
    while (rs.next()){
    out.println("<tr>");
    out.println("<td>"+rs.getInt("id")+"</td>");
    out.println("<td>"+rs.getString("username")+"</td>");
    out.println("<td>"+rs.getString("password")+"</td>");
    out.println("<td>"+rs.getString("email")+"</td>");
    out.println("<td>"+rs.getString("sex")+"</td>");
    out.println("<td>"+rs.getString("date")+"</td>");

    out.println("</tr>");
        }
    }
    //we will get data in nest demo - 6.LiveDemo #3
    %>
<%@include file="footer.jsp"%>