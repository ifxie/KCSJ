<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <title>软件项目管理</title>
  <link rel="stylesheet" href="css/index_style.css">
  <link rel="stylesheet" href="css/nav_left.css">

  <%@ include file="head.jsp" %>
  <div class="content">


        <div class="wrap">
            <div class="lan">

                <font size="7" style="margin-top: 10px">课堂学习</font>
                <div class="arrow">

                </div>
                <div class="Getmore">
                    <a href="javasctipt:void(0);" onclick='quarry("ppt")'>more..</a>
                </div>
            </div>
            <a class="module" href="javasctipt:void(0);" onclick='quarry("ppt")'>
                <img src="images/index_logo/ppt.PNG" alt="" width="50px" height="50px">
                <span class="moduleName  pull-right">[PPT]</span>
                <br>
                <br>
                <span>PPT乃是老师出品，实乃考试必备之良品，考前读一读，必考九十九！</span>
                <br><br><br>
                <span class="badge pull-right moduleName">1</span>
            </a>
            <a href="javasctipt:void(0);" onclick='quarry("skzl")' class="module">
                <img src="images/index_logo/logo1.png" alt="" width="50px" height="50px">
                <span class="moduleName  pull-right">[上课资料]</span>
                <br>
                <br>
                <span>老师上课资料多怎么办，没法整理怎么办，找我们。分类合理整理老师发送的资料，认真学习，带你走上人生巅峰！</span>
                <br><br>
                <span class="badge pull-right moduleName">2</span>
            </a>
            <a href="javasctipt:void(0);" onclick='quarry("khzy")' class="module">
                <img src="images/index_logo/logo1.png" alt="" width="50px" height="50px">
                <span class="moduleName  pull-right">[课后作业]</span>
                <br>
                <br>
                <span>课后作业做完就丢掉？想找时找不到怎么办？找我们！帮你存储各科课后作业，小学妹找你时再也不尴尬！</span>
                <br><br>
                <span class="badge pull-right moduleName">3</span>
            </a>
        </div>

      <div class="wrap">
          <div class="lan">
              <font size="7" style="margin-top: 10px">笔记整理</font>
              <div class="arrow"></div>
              <div class="Getmore">
                  <a href="note.jsp">more..</a>
              </div>
          </div>
          <a href="javasctipt:void(0);" onclick='load()' class="module">
              <img src="images/index_logo/logo2.png" alt="" width="50px" height="50px">
              <span class="moduleName  pull-right">[我的随笔]</span>
              <br>
              <br>
              <span>随笔是个好东西！每天写一点，快乐生活每一天！好记性不如烂笔头！养成写随笔的好习惯，将来你会发现这是多重要的事。</span>
              <br>
              <br>
              <span class="badge pull-right moduleName">1</span>
          </a>
          <a href="http://my.csdn.net/?ref=toolbar" class="module">
              <img src="images/index_logo/logo2.png" alt="" width="50px" height="50px">
              <span class="moduleName  pull-right">[我的博客]</span>
              <br>
              <br>
              <span>博客是个好东西！每天写一点，快乐生活每一天！好记性不如烂笔头！养成写博客的好习惯，记录你的技术成长过程。</span>
              <br>
              <br>
              <span class="badge pull-right moduleName">2</span>
          </a>
          <a href="javasctipt:void(0);" onclick='quarry("zhuanzai")' class="module">
              <img src="images/index_logo/logo2.png" alt="" width="50px" height="50px">
              <span class="moduleName  pull-right">[我的转载]</span>
              <br>
              <br>
              <span>三人行，必有我师焉！站在巨人的肩膀上才能看得更高。学习优秀的博客，收藏优秀的博客，有助于个人技术的成长！</span>
              <br>
              <br>
              <span class="badge pull-right moduleName">3</span>
          </a>
      </div>

      <div class="wrap">
          <div class="lan">
              <font size="7" style="margin-top: 10px">文档整理</font>
              <div class="arrow"></div>
              <div class="Getmore">
                  <a href="javasctipt:void(0);" onclick='quarry2("pdf")' >more..</a>
              </div>
          </div>
          <a href="javasctipt:void(0);" onclick='quarry2("pdf")' class="module">
              <img src="images/index_logo/logo2.png" alt="" width="50px" height="50px">
              <span class="moduleName  pull-right">[PDF书籍]</span>
              <br>
              <br>
              <span>读书使人充实，讨论使人机智，笔记使人准确，读史使人明智，读诗使人灵秀，数学使人周密，科学使人深刻，伦理使人庄重，逻辑修辞使人善辩。凡有所学，皆成性格。 </span><br><span style="text-align: left;">—— 培根</span>

              <span class="badge pull-right moduleName">1</span>
          </a>
          <a href="javasctipt:void(0);" onclick='quarry2("jszqx")' class="module">
              <img src="images/index_logo/logo2.png" alt="" width="50px" height="50px">
              <span class="moduleName  pull-right">[技术最前线]</span>
              <br>
              <br>
              <span>这里的全都是干货，了解最前线的技术，才能抓住机遇，抓住时机，更新自己的技术，让自己成为无可替代的人！</span>
              <br>
              <br>

              <span class="badge pull-right moduleName">2</span>
          </a>
          <a href="javasctipt:void(0);" onclick='quarry2("mstm")' class="module">
              <img src="images/index_logo/logo2.png" alt="" width="50px" height="50px">
              <span class="moduleName  pull-right">[面试题目]</span>
              <br>
              <br>
              <span>各大公司的面试题目，助你面试过关，进入大公司，当上白富帅（美），赢取白富美（帅）！</span>
              <br>
              <br>
              <span class="badge pull-right moduleName">3</span>
          </a>
      </div>

      <div class="wrap">
          <div class="lan">
              <font size="7" style="margin-top: 10px">作品展示</font>
              <div class="arrow"></div>
              <div class="Getmore">
                  <a href="works.jsp">more..</a>
              </div>
          </div>
          <a href="javasctipt:void(0);" onclick='quarry("teamshow")' class="module">
              <img src="images/index_logo/logo3.png" alt="" width="50px" height="50px">
              <span class="moduleName  pull-right">[TEAMSHOW]</span>
              <br>
              <br>
              <span>一个想成为卓越的人，仅凭自己的孤军奋战，单打独斗，是不可能成大气候的。你必须要融入团队，你必须要借助团队的力量。</span>
              <br>
              <br>
              <span class="badge pull-right moduleName">1</span>
          </a>
          <a href="javasctipt:void(0);" onclick='quarry("personalshow")' class="module">
              <img src="images/index_logo/logo3.png" alt="" width="50px" height="50px">
              <span class="moduleName  pull-right">[PERSONALSHOW]</span>
              <br>
              <br>
              <span>个人项目风采秀，记录并见证自己的项目经历！</span>
              <br>
              <br>
              <br>

              <span class="badge pull-right moduleName">2</span>
          </a>
      </div>
  </div>
</div>
</body>
    <script>
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
    </script>
</html>