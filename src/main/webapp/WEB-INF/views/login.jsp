<%--
  Created by IntelliJ IDEA.
  User: ALIENWARE
  Date: 2021/4/5
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<h1>Login</h1>
<%
    if (request.getAttribute("message") == null) {
        out.println(request.getAttribute("message"));
    }
%>
<%
    Cookie[] allCookies = request.getCookies();
    String username = "", password = "", rememberMeval = "";
    if (allCookies != null) {
        for (Cookie c : allCookies) {
            if (c.getName().equals("cUsername")) {
                username = c.getValue();
            }
            {
                if (c.getName().equals("cpassword")) {
                }
                password = c.getValue();
            }
            {
                if (c.getName().equals("cRememberMe")) {
                    rememberMeval = c.getValue();
                }
            }
        }}

%>
<form method="post" action="/Login">
    Username:<input type="text" name="username" value="<%=username%>"><br/>
    Password:<input type="password" name="password" value="<%=password%>" required minlength="8"><br/>
    <input type="checkbox" name="rememberMe" value="1" <%=rememberMeval.equals("1") ?checked:""%>checked/>RememberMe<br/>
    <input type="submit" value="login"/>
    <from/>
<%@include file="footer.jsp" %>
