<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="header.jsp"%>
<h1>welcome to my home page</h1>
<body>
<form method="get" target="_blank" action="search">
    <input type="text" name="txt" size="30">
    <select name="search">
        <option value="baidu">Baidu</option>
        <option value="bing">Bing</option>
        <option value="google">Google</option>
    </select>
    <input type="submit" value="Search">
</form>
<a href="hello">code1<br></a>
<a href="register.jsp">code2<br></a>
<a href="MyJsp.jsp">code3<br></a>
<a href="login.jsp">login<br></a>
</body>
</html>
<%@include file="footer.jsp"%>