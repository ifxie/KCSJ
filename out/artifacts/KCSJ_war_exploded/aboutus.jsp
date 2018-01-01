<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="css/aboutus_style.css">
    <link rel="stylesheet" href="css/nav_left.css">

    <%@ include file="head.txt" %>
    <div class="content">
        <div class="userinfo-wrap">
            <div class="user-info">
                <h3 class="username ">
                    <span>燕丶麦丶粥</span>
                </h3>
                <p class="about-info">
                    <span class="base-info">男 浙江省 杭州市 学生</span>
                    <span class="credit">积分 <em>2</em></span>
                </p>
                <p class="user-desc" title="">
                    <span>个性签名:</span>即使天无雨，我亦留此地
                </p>
            </div>
        </div>
        <div class="collection-container">
            <div class="title-wrap">
                <p class="dynamtic-title">
                    个人收藏
                </p>
            </div>
            <div class="collection-noting">

                    这个资料很有用，与数据结构相关(描述收藏的资料)

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
                                    <%--资源类型--%>
                                    <span>视频</span>
                                        <%--资源大小--%>
                                    <span class="emm">63.25MB</span>
                                    <%--资源作者--%>
                                    <span class="emm">马士兵</span>
                                </div>
                                <div class="detail">
                                    通过PHP学习的进阶篇的学习，你可以对PHP的理论知识由浅入深有更深一步的掌握，这些...
                                </div>
                        </div>
                    </a>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>