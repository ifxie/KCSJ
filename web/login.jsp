<%--
  Created by IntelliJ IDEA.
  User: Mzin
  Date: 2017/12/30
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<style>
    .loginframe{
        width: 25%;
        height: 400px;
        background-color:white;
        border: 5px solid aqua;
        position: fixed;
        top: 150px;
        left: 37.5%;
        z-index: 20;

    }
    .tiao{
        width: 100%;
        height: 80px;
        margin-top: 10px;
    }
    .tiao .col1{
        width: 40%;
        height: 100%;
        float: left;
        text-align: center;
    }
    .tiao .col2{
        width: 60%;
        height: 100%;
        float: left;
    }
    .tiao .col2 input{
        width: 75%;
        height: 33%;
    }
    .tiao .login_click{
        height: 40px;
        width: 30%;
        margin-left: 38%;
    }
    .login_click a{
        text-decoration:none;
        background:#2f435e;
        color:#f2f2f2;
        padding: 10px 30px 10px 30px;
        font-size:16px;
        font-family: 微软雅黑,宋体,Arial,Helvetica,Verdana,sans-serif;
        font-weight:bold;
        border-radius:3px;
        -webkit-transition:all linear 0.30s;
        -moz-transition:all linear 0.30s;
        transition:all linear 0.30s;
    }
    .login_click a:hover { background:#385f9e; }
    .tiao a{
        width: 100px;
        height: 100%;
    }
    .frameName{
        text-align: center;
        font-family: 宋体;
    }
</style>
<body>
<a href="index.jsp">返回主页</a>
<a href="register.jsp">跳转至注册页</a>
<div class="loginframe">
    <form action="" name="Login" method="post">
        <div class="tiao frameName">
            <font size="6">登入</font>
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
            <div class="login_click">
                <a class="btlogin" href="#">登 录</a>
            </div>
        </div>
    </form>
</div>
</body>
</html>
