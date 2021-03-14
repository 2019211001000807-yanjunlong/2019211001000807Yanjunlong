<%--
  Created by IntelliJ IDEA.
  User: ALIENWARE
  Date: 2021/3/14
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a herf="http://www.ecjtu.jx.cn/">go to ecjtu</a><!-- method id GET-->
<form><!--What is method when we use from?--><!--its GET,why?-->
    Username:<input type="text" name="text"><br/>
    Password:<input type="password" name="password" required minlength="8"><br/>
    email:<input type="email" name="email"><br/>
    Gender:<input type="radio" name="sex" id="nan"><label for="nan">Male</label>
    <input type="radio" name="sex" id="nv"><label for="nv">Female</label><br/>
    Date:<input type="date" name="date" placeholder="Date of Birt(yyyy-mm-dd)"><br/>
    <input type="submit" value="register">
</form>
</body>
</html>
