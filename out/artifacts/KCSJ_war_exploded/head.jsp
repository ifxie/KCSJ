<%@ page import="bean.User" %>
<%@ page contentType="text/html; charset=UTF-8"%>
    <link rel="stylesheet" type="text/css" href="css/mainstyle.css">
    <style>
    .info .loginOrRegister{
    float:left;

    }
    </style>
</head>
<body>
<div class="page">
    <!-- 头部信息条 -->
<div class="info">
    <div class="logo">
      <img src="images/logo.png" height="80x">
    </div>
    <div class="search">
      <form action="post">
        <input type="text" id="input1">
        <input type="submit" id="input2">
      </form>
    </div>
    <%
      User user = (User) session.getAttribute("LoginToken");
      if (user == null){
    %>
    <div class="loginOrRegister">
    <span><a href="javascript:void(0);" onclick="show1()">登录</a></span>
    |
   <span><a href="javascript:void(0);" onclick="show2()">注册</a></span>
    </div>
  <%
    }else {
  %>
  <div class="haslogin">
    <span><a href="aboutus.jsp"><%=user.getUsername()%></a></span>
    |
    <span><a href="exit">退出登录</a></span>
  </div>
  <%}%>
  </div>
  <!--侧面导航栏-->
  <div class="nav-main" style="	position: fixed;top: 80px;">
    <div class="nav-box">
      <div class="nav">
        <ul class="nav-ul">
          <li><a href="index.jsp" class="home"><span>首页</span></a></li>
          <li><a href="javasctipt:void(0);" onclick='quarry("ppt")' class="develop"><span>课堂学习</span></a></li>
          <li><a href="javasctipt:void(0);" onclick='load()' class="wechat"><span>笔记整理</span></a></li>
          <li><a href="javasctipt:void(0);" onclick='quarry2("pdf")' class="case"><span>文档整理</span></a></li>
          <li><a href="works.jsp" class="news"><span>作品展</span></a></li>
          <li><a href="source.jsp" class="source"><span>资源整理</span></a></li>
          <li><a href="aboutus.jsp" class="contact"><span>个人中心</span></a></li>
        </ul>
      </div>
      <div class="nav-slide">
        <div class="nav-slide-o"></div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="javasctipt:void(0);" onclick='quarry("ppt")'><span>PPT</span></a></li>
            <li><a href="javasctipt:void(0);" onclick='quarry("skzl")'><span>上课资料</span></a></li>
            <li><a href="javasctipt:void(0);" onclick='quarry("khzy")'><span>课后作业</span></a></li>

          </ul>
        </div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="javasctipt:void(0);" onclick='load()'><span>我的随笔</span></a></li>
            <li><a href="#"><span>我的博客</span></a></li>
            <li><a href="#"><span>我的转载</span></a></li>
          </ul>
        </div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="javasctipt:void(0);" onclick='quarry2("pdf")'><span>PDF书籍</span></a></li>
            <li><a href="javasctipt:void(0);" onclick='quarry2("jszqx")'><span>技术最前线</span></a></li>
            <li><a href="javasctipt:void(0);" onclick='quarry2("mstm")'><span>面试题目</span></a></li>
          </ul>
        </div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="#"><span>团队秀</span></a></li>
            <li><a href="#"><span>个人秀</span></a></li>
          </ul>
        </div>
        <%--<div class="nav-slide-o">--%>
          <%--<ul>--%>
            <%--<li><a href="#"><span>二级目录1</span></a></li>--%>
            <%--<li><a href="#"><span>二级目录2</span></a></li>--%>
            <%--<li><a href="#"><span>二级目录3</span></a></li>--%>
          <%--</ul>--%>
        <%--</div>--%>
      </div>
    </div>
  </div>
  <!--侧面导航栏的动作-->

  <%--登录--%>
  <div id="loginDiv" style="display:none;">
    <div id="closediv1">
      <a href="javascript:void(0);" onclick="closeDiv1()"><img src="images/xxxx.png"></a>
    </div>
    <div id="dlTitle1"><h>登陆</h></div>
    <div id="tbdiv1">
      <form action="login" name="Login" method="post">
        <table id="logintb">
          <tr>
            <td class="logintd1">用户名：</td>
            <td class="logintd2"><input id="username" type="text" name="username"></td>
          </tr>
          <tr>
            <td class="logintd1">密码：</td>
            <td class="logintd2"><input id="password" type="password" name="password"></td>
          </tr>
        </table>
        <div><span><a href="javascript:void(0);" onclick="show2()">&nbsp;&nbsp;&nbsp;没有账号？那你登录个屁啊</a></span></div>
        <div>
          <input type="submit" value="登录" style="width: 70px;height: 30px" id="loginbutton">
        </div>
      </form>
    </div>
  </div>
  <%--注册--%>

  <div id="registerDiv" style="display:none;">
    <div id="closediv2">
      <a href="javascript:void(0);" onclick="closeDiv2()"><img src="images/xxxx.png"></a>
    </div>
    <div id="dlTitle2"><h>注册</h></div>
    <div id="tbdiv2">
      <form action="regist" name="Register" method="post">
        <table id="registertb">
          <tr>
            <td class="registertd1">手机号：</td>
            <td class="registertd2"><input type="text" name="phoneNum" id="phoneNum"></td>
          </tr>
          <tr>
            <td class="registertd1">用户名：</td>
            <td class="registertd2"><input type="text" name="username"></td>
          </tr>
          <tr>
            <td class="registertd1">密码：</td>
            <td class="registertd2"><input type="password" name="password"></td>
          </tr>
          <tr>
            <td class="registertd1">确认密码：</td>
            <td class="registertd2"><input type="password" name="sed_password"></td>
          </tr>
          <tr>
            <td class="registertd1">验证码：</td>
            <td class="registertd2"><input type="text" name="code" style="width: 50%;height: 60%;" >&nbsp;&nbsp;
              <input type="button" name="" value="获取验证码" style="width: 27%"  onclick="settime(this)"></td>
          </tr>
        </table>

        <div>
          <input type="submit" value="确定" style="width: 70px;height: 30px" id="yes">
          <input type="button" value="取消" style="width: 70px;height: 30px" id="no" onclick="closeDiv2()">
        </div>
      </form>
    </div>
  </div>
  <div id="overDiv" style="display:none;"></div>


  <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="js/leftnav.js"></script>



    <script>

      function show1(){
          document.getElementById("overDiv").style.display = "block" ;
          document.getElementById("loginDiv").style.display = "block" ;
      }
      function show2(){
          document.getElementById("overDiv").style.display = "block" ;
          document.getElementById("registerDiv").style.display = "block" ;
      }
      function closeDiv1(){
          document.getElementById("overDiv").style.display = "none" ;
          document.getElementById("loginDiv").style.display = "none" ;
      }
      function closeDiv2(){
          document.getElementById("overDiv").style.display = "none" ;
          document.getElementById("registerDiv").style.display = "none" ;
      }
      var countdown=60;
      function settime(val) {
          sendcode()
          if (countdown == 0) {
              val.removeAttribute("disabled");
              val.value="获取验证码";
              countdown = 60;
              return false;
          } else {
              val.setAttribute("disabled", true);
              val.value="重新发送(" + countdown + ")";
              countdown--;
          }
          setTimeout(function() {
              settime(val);
          },1000);
      }

      function sendcode() {
          //isPhoneNum();
          $.ajax({
              type:"post",
              url:"/sendcode",
              data:{
                  phoneNum:$("#phoneNum").val()
              },
              success:function(res){
                  console.log(res);

              }
          });

      }

        function quarry(category) {
            $.ajax({
                type:"post",
                url:"/quarry",
                data:{
                    category:category,
                    belongs:"0"
                },
                success:function(res){
                    console.log(res);
                    window.location.href="filelistshow.jsp";
                }
            });
        }

      function quarry2(category) {
          alert(category)
          $.ajax({
              type:"post",
              url:"/bookquarry",
              data:{
                  category:category
              },
              success:function(res){
                  console.log(res);
                  window.location.href="document.jsp";
              }
          });
      }

        function load() {
            $.ajax({
                type:"post",
                url:"/load",
                data:{

                },
                success:function(res){
                    console.log(res);
                    window.location.href="note.jsp";
                }
            });
        }
    </script>