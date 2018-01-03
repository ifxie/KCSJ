<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>课堂学习</title>
    <link rel="stylesheet" href="css/class_style.css">
    <link rel="stylesheet" href="css/nav_left.css">

    <%@ include file="head.txt" %>


    <div class="content">
        <div class="select-lan">
            <form action="">
                <select name="className" id="select-option">
                    <option value="volvo">PHP</option>
                    <option value="saab">C++</option>
                    <option value="fiat" selected="selected">Java</option>
                    <option value="audi">Python</option>
                </select>
                <input type="button" id="submit-button1" name="" value="确认">
            </form>
        </div>
        <div class="collection-container">
            <div class="title-wrap">
                <p class="dynamtic-title">
                    课堂内容
                </p>
            </div>
            <div class="collection-noting">

               发布时间 2018年1月2日18:45:38

            </div>
            <div class="collection-item">
                <div class="collection-content">
                    <a href="#">
                        <img src="images/resource_img/123123.jpg" alt="" width="240px" height="160px">
                        <div class="collection-content-desc">
                            <div class="subtitle">
                                PHP进阶
                            </div>
                            <div class="describe">
                                <%--资源类型  发布的作业，课堂资料，PPT--%>
                                <span>类型</span>
                                <%--资源大小--%>
                                <span class="emm">63.25MB</span>
                                <%--资源教师--%>
                                <span class="emm">马士兵</span>
                            </div>
                            <div class="detail">
                                //这里是对内容的描述.
                            </div>
                            <div class="function">
                                <a href="" onclick="alert('正在下载')">下载</a>
                                <a href="" onclick="alert('收藏成功')">收藏</a>
                                <button value="发送" name="" id="send-button">发送</button>
                            </div>
                        </div>
                    </a>

                </div>
            </div>
        </div>
        <div class="homework-part disappear">
            <div class="system-lan">
                上传作业
                <div class="exit">Esc</div>
            </div>
            <div class="homework-info">

                <span><font size="5">上传者：</font></span>
                <span><font size="5">吴彦祖</font></span>
                <br>
                <br>
                <span><font size="4">上传时间:</font></span>
                <span><font size="4">2018年1月2日19:04:11</font></span>
                <br>
                <br>
                <span><font size="4">文件格式</font></span>
                <span><font size="4">doc</font></span>
                <br>
                <br>
                <span><font size="4">文件大小</font></span>
                <span><font size="4">23.5mb</font></span>
                <br>
                <br>
            </div>
            <div class="homework-submit">
                <form action="">
                    <input type="file" name="homework" style="margin-top: 20px;margin-left: 20px">
                    <span style="margin-left: 20px;margin-top: 10px;"><font size="3">选择发送老师：</font></span>
                    <select name="teacher">
                        <option value="volvo">汪老师</option>
                        <option value="saab">王老师</option>
                        <option value="fiat" selected="selected">徐老师</option>
                        <option value="audi">郭老师</option>
                    </select>
                    <br>
                    <input type="button" value="发送" id="submit-button">
                </form>
            </div>
        </div>
    </div>
</div>
    <script>
        $(document).ready(function () {
            $("#send-button").click(function () {
                console.log("show被执行");
                var m=$('.homework-part');
                m.removeClass("disappear");
            })
            $(".exit").click(function () {
                var m=$('.homework-part');
                m.addClass("disappear");
            })
        })

    </script>
</body>
</html>