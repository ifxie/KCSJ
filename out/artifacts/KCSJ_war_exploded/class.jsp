<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>课堂学习</title>
    <link rel="stylesheet" href="css/class_style.css">
    <link rel="stylesheet" href="css/nav_left.css">
    <style>
        .title-wrap{
            padding-bottom: 21px;
            border-bottom: 1px solid #CFD5D8;
        }
        .collection-container{
            width: 960px;
            height: 1290px;
            margin: 0 auto auto auto;
        }
        .dynamtic-title{
            color: #CFD5D8;
            line-height: 14px;
            margin-top: 10px;
            padding-top: 25px;
            font-size: 14px;
        }
        .collection-item{
            width: 100%;
            height: 240px;
            border-bottom: 1px solid #CFD5D8;
        }
        .collection-noting{
            height: 60px;
            font-size: 16px;
            color: #07111b;
            line-height: 16px;
            margin-top: 20px;
        }
        .collection-content{
            background-color: #F2F4F6;
            height: 160px!important;
            position: relative;
        }
        .collection-content-desc{
            padding-top: 24px;
            width: 100%;
            float: right;
            line-height: 30px;
            color: #4C545C;
            width: 636px!important;
        }
        .subtitle{
            color: #4d555d;
            font-size: 18px;
            font-weight: 700;
            line-height: 35px;
            white-space: nowrap;
            overflow: hidden;
        }
        .emm{
            margin-left:120px;!important;
        }
        .collection-content .function{
                text-align: right;
                margin-right: 20px;
        }
        .collection-content .function a{
            width: 50px;
            margin: 0 10px;
            color: #111213;
        }

        .homework-part{
            width: 300px;
            height: 480px;
            z-index: 2;
            float: right;
            border: 1px solid #313131;
            position: fixed;
            top: 160px;
            right: 100px;
            border-radius: 5px;
            text-align: left;
        }
        .system-lan{
            width: 100%;
            height: 30px;
            border-radius: 5px 5px 0 0;
            background-color: #313131;
            color: white;
            text-align: left;
            font-size: 25px;
            font-family: 宋体;
        }
        .homework-info{
            font-family: 宋体;
            border-bottom: 1px solid #313131;
            width: 100%;
            padding: 30px 10px;
        }
        .homework-submit{
            width: 100%;
            padding: 5px auto;
        }
        #submit-button{
            margin: 10px 115px;
            width: 70px;
            height: 40px;
        }
        #submit-button:hover{
            background-color: #357dd7;
        }
    </style>

    <%@ include file="head.txt" %>
    <div class="content">
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
                            </div>
                        </div>
                    </a>

                </div>
            </div>
        </div>
        <div class="homework-part">
            <div class="system-lan">
                上传作业
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
</body>
</html>