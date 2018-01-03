<%--
  Created by IntelliJ IDEA.
  User: Mzin
  Date: 2017/12/30
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<link rel="stylesheet" href="css/LoginAndRegister.css">
<body>
<a href="index.jsp">返回主页</a>
<a href="login.jsp">跳转至登录页</a>
<div class="registerframe">
    <form action="" name="Register" method="post">
        <div class="tiao frameName">
            <font size="6">注册</font>
        </div>
        <div class="tiao">
            <div class="col1">
                <font size="4">手机号</font>
            </div>
            <div class="col2">
                <input type="text" name="phoneNum">
            </div>
        </div>
        <div class="tiao">
            <div class="col1">
                <font size="4">用户名:</font>
            </div>
            <div class="col2">
                <input type="text" name="username">
            </div>
        </div>
        <div class="tiao">
            <div class="col1">
                <font size="4">密码:</font>
            </div>
            <div class="col2">
                <input type="password" name="password">
            </div>
        </div>
        <div class="tiao">
            <div class="col1">
                <font size="4">确认密码:</font>
            </div>
            <div class="col2">
                <input type="password" name="sed_password">
            </div>
        </div>
        <div class="tiao">
            <div class="col1">
                <font size="4">验证码:</font>
            </div>
            <div style="width: 40%;height: 50%;float: left;">
                <input type="text" name="identifyingcode" style="width: 50%;height: 60%;" >
                <input type="button" name="" value="获取验证码" style="height: 60%;">
            </div>
        </div>
        <div class="tiao">
            <input type="button" value="注册" id="registerbutton">
        </div>
    </form>
</div>
</body>
</html>
