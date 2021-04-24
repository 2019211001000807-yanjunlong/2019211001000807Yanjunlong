<%--
  Created by IntelliJ IDEA.
  User: ALIENWARE
  Date: 2021/4/24
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1> User Update</h1>
<%
    User u=(User) session.getAttribute("user");
%>
<form method="post"  action="/register">
    <form action="../register" method="post" onsubmit="checkAll()">
        <input type="hidden" name="id" value="<%=u.getId()%>">
        Username:<input type="text" name="username"value="<%=u.getUsername()%>"/><br/>
        Password:<input type="password" name="password" value="<%=u.getPassword()%>"/>required minlength="8"><br/>
        email:<input type="email" name="email"value="<%=u.getEmail()%>"/>><br/>
        Gender:<input type="radio" name="sex" value="male" <%="male".equals(u.getsex())?"checked" :""%>>
        Male<input type="radio" name="sex" value="female" <%="female".equals(u.getsex())?"checked":""%>>Female<br/>
        Date:<input type="date" name="date" placeholder="Date of Birt(yyyy-mm-dd)"value="<%=u.getBirthdate()%>">><br/>
        <input type="submit" value="Save Changes"/>
    </form>
</form>
<%@include file="footer.jsp"%>