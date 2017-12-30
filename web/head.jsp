<%@ page contentType="text/html; charset=UTF-8"%>
<div class="info">
    <div class="logo">
      <img src="images/logo.png" height="90x">
    </div>
    <div class="search">
      <form action="#" method="post">
        <input type="text" id="input1">
        <input type="submit" id="input2">
      </form>
      <form action="login.jsp" method="get">
        <input type="submit" id="input3" value="登录">
      </form>
    </div>
  </div>
  <!--侧面导航栏-->
  <div class="nav-main" style="	position: fixed;top: 90px;">
    <div class="nav-box">
      <div class="nav">
        <ul class="nav-ul">
          <li><a href="index.jsp" class="home"><span>首页</span></a></li>
          <li><a href="class.jsp" class="develop"><span>课堂学习</span></a></li>
          <li><a href="note.jsp" class="wechat"><span>笔记整理</span></a></li>
          <li><a href="document.jsp" class="case"><span>文档整理</span></a></li>
          <li><a href="works.jsp" class="news"><span>作品展</span></a></li>
          <li><a href="source.jsp" class="source"><span>资源整理</span></a></li>
          <li><a href="aboutus.jsp" class="contact"><span>关于我们</span></a></li>
        </ul>
      </div>
      <div class="nav-slide">
        <div class="nav-slide-o"></div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="#"><span>PPT整理</span></a></li>
            <li><a href="#"><span>上课资料</span></a></li>
            <li><a href="#"><span>课后作业</span></a></li>

          </ul>
        </div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="#"><span>随笔</span></a></li>
            <li><a href="#"><span>博客</span></a></li>
            <li><a href="#"><span>转载</span></a></li>
          </ul>
        </div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="#"><span>PDF书籍</span></a></li>
            <li><a href="#"><span>WORD文档</span></a></li>
            <li><a href="#"><span>技术干货</span></a></li>
            <li><a href="#"><span>面试试题</span></a></li>
          </ul>
        </div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="#"><span>个人秀</span></a></li>
            <li><a href="#"><span>团队秀</span></a></li>
          </ul>
        </div>
        <div class="nav-slide-o">
          <ul>
            <li><a href="#"><span>视频资源</span></a></li>
            <li><a href="#"><span>网站资源</span></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!--侧面导航栏的动作-->
  <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="js/leftnav.js"></script>