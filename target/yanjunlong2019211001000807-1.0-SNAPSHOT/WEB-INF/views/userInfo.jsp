<%@ page import="com.yanjunlong.model.User" %><%--
  Created by IntelliJ IDEA.
  User: ALIENWARE
  Date: 2021/4/12
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1> User Info</h1>
<%
    Cookie [] allCookies=request.getCookies();
    for (Cookie c:allCookies){
        out.println("<br/>"+c.getName()+" --- "+c.getValue());
    }
%>
<%
    User u = (User) request.getAttribute("user");
%>
<table>
    <tr>
        <td>Username:</td><td><%=u.getUsername()%></td>
    </tr><tr>
        <td>password:</td><td><%=u.getPassword()%></td>
    </tr><tr>
        <td>email:</td><td><%=u.getEmail()%></td>
    </tr><tr>
        <td>sex:</td><td><%=u.getsex()%></td>
    </tr><tr>
        <td>data:</td><td><%=u.getBirthdate()%></td>
    </tr>

</table>
<%@include file="footer.jsp"%>