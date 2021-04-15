<%--
  Created by IntelliJ IDEA.
  User: ALIENWARE
  Date: 2021/3/22
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>>

<head>
        <title>register</title>
        <script>
                function isPasswordValid() {
                        const password = document.getElementById("psw").value;
                        if(password.length<8) {
                                alert("password lenth less than 8:，"+password.length+"/8");
                                document.getElementById("psw").style.color="red";
                                return false;
                        }
                        document.getElementById("password").style.color="green";
                        return true;
                }
                function isMailValid(){
                        var x=document.getElementById("mail").value;
                        var atpos=x.indexOf("@");
                        var dotpos=x.lastIndexOf(".");
                        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length){
                                alert("e-mail format wrong");
                                document.getElementById("mail").style.color="red";
                                return false;
                        }
                        document.getElementById("mail").style.color="green";
                        return true;
                }
                function isDateValid() {
                        var obj=document.getElementById("birth");
                        var strDate = obj.value;
                        console.log(strDate+"-<")
                        var re = /^(\d{4})-(\d{2})-(\d{2})$/;
                        if (re.test(strDate))//判断日期格式符合YYYY-MM-DD标准
                        {
                                var dateElement = new Date(RegExp.$1, parseInt(RegExp.$2, 10) - 1, RegExp.$3);
                                if (!((dateElement.getFullYear() == parseInt(RegExp.$1)) && ((dateElement.getMonth() + 1) == parseInt(RegExp.$2, 10)) && (dateElement.getDate() == parseInt(RegExp.$3))))//判断日期逻辑
                                {
                                        alert("You can only input Date.(YYYY-MM-DD) !");
                                        document.getElementById("birth").style.color="red";
                                        return false;
                                }
                        } else {
                                alert("You can only input Date.(YYYY-MM-DD)!");
                                document.getElementById("birth").style.color="red";
                                return false;
                        }
                        document.getElementById("birth").style.color="green";
                        return true;
                }
                function checkAll() {
                        if(isDateValid()&&isMailValid()&&isPasswordValid()&&document.getElementById("userName").value!=null&&document.getElementById("sex").value!=null) {
                                alert("提交成功")
                                return true;
                        }
                        alert("提交失败")
                        return false;
                }
        </script>
</head>
<body>
<form method="post"  action="/register">
        <h1>This is my JSP page.</h1><br/>
        <form action="../register" method="post" onsubmit="checkAll()">
        Username:<input type="text" name="username"><br/>
        Password:<input type="password" name="password" required minlength="8"><br/>
        email:<input type="email" name="email"><br/>
        Gender:<input type="radio" name="sex" value="male">Male<input type="radio" name="sex" value="female">Female<br/>
        Date:<input type="date" name="date" placeholder="Date of Birt(yyyy-mm-dd)"><br/>
        <input type="submit" value="register">
    </form>
</form>
</body>
</form>
<%@include file="footer.jsp"%>