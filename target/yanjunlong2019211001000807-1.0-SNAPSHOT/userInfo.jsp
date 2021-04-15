<%--
  Created by IntelliJ IDEA.
  User: ALIENWARE
  Date: 2021/4/12
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1> User Info</h1>
<table>
    <tr>
        <td>Username:</td><td><%=request.getAttribute("username")%></td>
    </tr><tr>
        <td>password:</td><td><%=request.getAttribute("password")%></td>
    </tr><tr>
        <td>email:</td><td><%=request.getAttribute("email")%></td>
    </tr><tr>
        <td>sex:</td><td><%=request.getAttribute("sex")%></td>
    </tr><tr>
        <td>data:</td><td><%=request.getAttribute("date")%></td>
    </tr>

</table>
<%@include file="footer.jsp"%>