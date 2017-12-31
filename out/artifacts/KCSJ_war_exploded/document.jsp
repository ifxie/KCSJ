<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>课堂学习</title>
    <link rel="stylesheet" href="css/nav_left.css">
    <link rel="stylesheet" href="css/document_style.css">
    <style>
        .doc-display{
            width: 100%;
            height: 1450px;

        }
        .doc-item{
            width: 100%;
            height: 150px;
            border: #000 solid 1px;
            background-color: #FFFFFB;
            margin-top: 10px;
            box-shadow: 0 5px 5px 0px #000000;
        }
        .doc-img{
            width: 13%;
            height: 100%;
            float: left;
            margin-left: 2%;
        }
        .doc-info{
            height: 100%;
            width: 25%;
            float: left;
            margin-left: 2%;
            padding-top:50px;

            text-align: center;
        }
        .doc-info span{
            line-height: 40px;
            font-family: 宋体;
        }
        .doc-record{
            width: 10%;
            height: 100%;
            float: left;
            margin-left: 2%;
        }
        .doc-record .download-num{
            margin-top:42px;
            width: 100%;
            height: 40px;
            text-align: center;
        }
        .doc-record .collect-num{
            width: 100%;
            height: 40px;
            text-align: center;
        }
        .doc-intro{
            height: 100%;
            width: 25%;
            float: left;
            margin-left: 2%;
            padding-top: 20px;
        }
        .function{
            height: 100%;
            width: 13%;
            float: left;
            margin-left: 5%;
        }
        .function .download{
            margin-top:42px;
            width: 100%;
            height: 40px;
            text-align: center;
        }
        .function .collect{
            width: 100%;
            height: 40px;
            text-align: center;
        }
    </style>


    <%@ include file="head.txt" %>
    <div class="content">
        <div class="classification">
            <ul>
                <li>C++</li>
                <li>JAVA</li>
                <li>Python</li>
                <li>PHP</li>
                <li>操作系统</li>
                <li>pascal</li>
            </ul>
        </div>
        <div class="doc-display">
                <div class="doc-item">
                    <div class="doc-img">
                        <%--这里放的图片尺寸应裁剪为3:2--%>
                            <img src="images/PHP经典实例.jpg" alt="" width="100%" height="100%">
                    </div>
                    <div class="doc-info">
                        <span>斯克拉,2009年中国电力出版社出版</span>
                    </div>
                    <div class="doc-record">
                        <div class="download-num">
                            下载量：21
                        </div>
                        <div class="collect-num">
                            收藏量：42
                        </div>
                    </div>
                    <div class="doc-intro">
                        <span>  PHP经典实例（第2版）能够为您节省宝贵的Web开发时间。有了这些针对真实问题的解决方案放在手边，
                            大多数编程难题都会迎刃而解。《PHP经典实例(第2版)》将PHP的特性与经典实例丛书的独特形式组合到一起，
                            足以帮您成功地构建跨浏览器的Web应用程序。</span>
                    </div>
                    <div class="function">
                        <div class="download">
                            <a href="#">下载</a>
                        </div>
                        <div class="collect">
                            <a href="#">收藏</a>
                        </div>
                    </div>
                </div>
            <div class="doc-item">
                <div class="doc-img">
                    <%--这里放的图片尺寸应裁剪为3:2--%>
                    <img src="images/PHP经典实例.jpg" alt="" width="100%" height="100%">
                </div>
                <div class="doc-info">
                    <span>斯克拉,2009年中国电力出版社出版</span>
                </div>
                <div class="doc-record">
                    <div class="download-num">
                        下载量：21
                    </div>
                    <div class="collect-num">
                        收藏量：42
                    </div>
                </div>
                <div class="doc-intro">
                        <span>  PHP经典实例（第2版）能够为您节省宝贵的Web开发时间。有了这些针对真实问题的解决方案放在手边，
                            大多数编程难题都会迎刃而解。《PHP经典实例(第2版)》将PHP的特性与经典实例丛书的独特形式组合到一起，
                            足以帮您成功地构建跨浏览器的Web应用程序。</span>
                </div>
                <div class="function">
                    <div class="download">
                        <a href="#">下载</a>
                    </div>
                    <div class="collect">
                        <a href="#">收藏</a>
                    </div>
                </div>
            </div>
            <div class="doc-item">
                <div class="doc-img">
                    <%--这里放的图片尺寸应裁剪为3:2--%>
                    <img src="images/PHP经典实例.jpg" alt="" width="100%" height="100%">
                </div>
                <div class="doc-info">
                    <span>斯克拉,2009年中国电力出版社出版</span>
                </div>
                <div class="doc-record">
                    <div class="download-num">
                        下载量：21
                    </div>
                    <div class="collect-num">
                        收藏量：42
                    </div>
                </div>
                <div class="doc-intro">
                        <span>  PHP经典实例（第2版）能够为您节省宝贵的Web开发时间。有了这些针对真实问题的解决方案放在手边，
                            大多数编程难题都会迎刃而解。《PHP经典实例(第2版)》将PHP的特性与经典实例丛书的独特形式组合到一起，
                            足以帮您成功地构建跨浏览器的Web应用程序。</span>
                </div>
                <div class="function">
                    <div class="download">
                        <a href="#">下载</a>
                    </div>
                    <div class="collect">
                        <a href="#">收藏</a>
                    </div>
                </div>
            </div>
            <div class="doc-item">
                <div class="doc-img">
                    <%--这里放的图片尺寸应裁剪为3:2--%>
                    <img src="images/PHP经典实例.jpg" alt="" width="100%" height="100%">
                </div>
                <div class="doc-info">
                    <span>斯克拉,2009年中国电力出版社出版</span>
                </div>
                <div class="doc-record">
                    <div class="download-num">
                        下载量：21
                    </div>
                    <div class="collect-num">
                        收藏量：42
                    </div>
                </div>
                <div class="doc-intro">
                        <span>  PHP经典实例（第2版）能够为您节省宝贵的Web开发时间。有了这些针对真实问题的解决方案放在手边，
                            大多数编程难题都会迎刃而解。《PHP经典实例(第2版)》将PHP的特性与经典实例丛书的独特形式组合到一起，
                            足以帮您成功地构建跨浏览器的Web应用程序。</span>
                </div>
                <div class="function">
                    <div class="download">
                        <a href="#">下载</a>
                    </div>
                    <div class="collect">
                        <a href="#">收藏</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>