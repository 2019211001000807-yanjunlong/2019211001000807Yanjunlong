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
   User user= (User) request.getAttribute("user");
%>
<table>
    <tr>
        <td>Username:</td><td><%=user.getUsername()%></td>
    </tr><tr>
        <td>password:</td><td><%=user.getPassword()%></td>
    </tr><tr>
        <td>email:</td><td><%=user.getEmail()%></td>
    </tr><tr>
        <td>sex:</td><td><%=user.getsex()%></td>
    </tr><tr>
        <td>data:</td><td><%=user.getBirthdate()%></td>
    </tr>

</table>
<%@include file="footer.jsp"%>