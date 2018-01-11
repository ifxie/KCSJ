<%@ page import="bean.User_detail" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="css/aboutus_style.css">
    <link rel="stylesheet" href="css/nav_left.css">


    <script>
        function show(){
            document.getElementById("overDiv").style.display = "block" ;
            document.getElementById("hsDiv").style.display = "block" ;
        }
        function closeDiv(){
            document.getElementById("overDiv").style.display = "none" ;
            document.getElementById("hsDiv").style.display = "none" ;
        }
    </script>
    <style>
        #overDiv{
            background-color:#000;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0; /*FF IE7*/
            filter: alpha(opacity = 65); /*IE*/
            opacity: 0.65; /*FF*/
            z-index: 110;
            position: fixed !important; /*FF IE7*/
            position: absolute; /*IE6*/
        }
        #hsDiv{
            background:#fff;
            z-index: 120;
            width: 500px;
            height: 400px;
            left: 43%; /*FF IE7*/
            top: 37%; /*FF IE7*/
            margin-left: -150px !important; /*FF IE7 该值为本身宽的一半 */
            margin-top: -60px !important; /*FF IE7 该值为本身高的一半*/
            margin-top: 0px;
            position: fixed !important; /*FF IE7*/
            position: absolute; /*IE6*/
        }
        #closediv{
            margin-left: 483.5px;
        }
        #dlTitle{
            width:400px;
            height: 30px;
            font-size:18px;
            margin: auto auto auto 220px;
        }
        #xiugai tb{
            width: 500px;
            height:auto;
            border: 0px;
            margin-top: 5px;
        }
        #xiugaitb .xiugaitd1,#xiugaitb .xiugaitd3
        {
            height:35px;
        }
        #xiugaitb .xiugaitd1
        {
            font-size:18px;
            color: #888888;
            vertical-align: middle;
            padding-left: 40px;
        }
        #lxiugaitb .xiugaitd3{
            font-size:17px;
            vertical-align: middle;
            padding-left: 5px;
        }
        #xiugaitb .xiugaitd2
        {
            height:auto;
        }
        #xiugaitb td a{
            float: right;
        }
        .xiugaitd2 input{
            width:300px;
            height: 32px;
        }
        #yes{
            background-color: #316a91;
            color: white;
            margin-left: 130px;
            margin-top: 20px;
            border-radius: 5px;
        }
        #yes:hover{
            background-color: #629feb;
        }
        #no{
            background-color: #316a91;
            color: white;
            margin-left: 70px;
            margin-top: 20px;
            border-radius: 5px;
        }
        #no:hover{
            background-color: #629feb;
        }
    </style>

    <%@ include file="head.jsp" %>
    <%
        if (user == null){
           user = new User();
            //user.setContribution(0);
        }
        User_detail dUser = (User_detail) session.getAttribute("dUser");
        if (dUser == null)
            dUser = new User_detail();
    %>
    <div class="content">
        <div class="userinfo-wrap">
            <div class="user-info" >
                <div class="user-img">
                    <img src="images/<%=dUser.getImg()%>" style="width: 150px; height: 150px;">
                </div>
            </div>
            <div class="user-info">
                <h3 class="username ">
                    <span><%=user.getUsername()%></span>
                </h3>
                <p class="about-info">
                    <span class="base-info"><%=dUser.getSex()%> <%=dUser.getDizhi()%> <%=dUser.getShenfen()%></span>
                    <span class="credit">积分 <em><%=user.getContribution()%></em></span>
                </p>
                <p class="user-desc" title="">
                    <span>个性签名:</span><%=dUser.getStylenote()%>
                </p>
                <p class="about-info">
                <p class="about-info">
                <span class="edit-base-info">[<a href="javascript:void(0);" onclick="show()">编辑个人信息</a>]</span>
                </p>
            </div>
        </div>
        <div class="collection-container">
            <div class="title-wrap">
                <p class="dynamtic-title">
                    上传文件：
                </p>
            </div>
            <%--<div class="collection-noting">--%>

                <%--这个资料很有用，与数据结构相关(描述收藏的资料)--%>

            <%--</div>--%>
            <div class="collection-item">
                <div class="collection-content">
                        <form >
                            <table style="margin-left: auto;margin-right: auto;">
                                <tr>
                                    <td>上传模块：</td>
                                    <td><input type="text" id="category"></td>
                                </tr>

                                <tr>
                                    <td>上传科目：</td>
                                    <td><input type="text" id="belongs"></td>
                                </tr>
                                <tr>
                                    <td>重命名：</td>
                                    <td><input type="text" id="newname" value="请输入英文名"></td>
                                </tr>
                                <tr>
                                    <td><input type="file" id="file" /></td>
                                    <td><input type="button" value="提交" onclick="savetomysql()"></td>
                                </tr>
                            </table>
                        </form>
                </div>
            </div>
        </div>
    </div>
        <script src="http://gosspublic.alicdn.com/aliyun-oss-sdk-4.4.4.min.js"></script>

            <script type="text/javascript">
                function guid() {
                    function s4() {
                        return Math.floor((1 + Math.random()) * 0x10000)
                            .toString(16)
                            .substring(1);
                    }
                    return s4() + s4() + s4() + s4() +
                        s4() + s4() + s4() + s4();
                }
                document.getElementById('file').addEventListener('change', function (e) {
                    var file = e.target.files[0];
                    var uuid = guid();
                    var category = document.getElementById('category').value
                    var belongs = document.getElementById('belongs').value
                    var newname = document.getElementById('newname').value
                    var path = category+"/"+belongs
                    var storeAs = '/'+path+'/'+newname;
                    console.log(file.name + ' => ' + storeAs);
                    OSS.urllib.request("http://localhost:8080/do",
                        {method: 'GET'},
                        function (err, response) {
                            if (err) {
                                return alert(err);
                            }
                            try {
                                result = JSON.parse(response);
                                console.log(result);
                            } catch (e) {
                                return alert('parse sts response info error: ' + e.message);
                            }
                            var client = new OSS.Wrapper({
                                accessKeyId: result.AccessKeyId,
                                accessKeySecret: result.AccessKeySecret,
                                stsToken: result.SecurityToken,
                                endpoint: 'oss-cn-hangzhou.aliyuncs.com',
                                bucket: 'mengzh'
                            });
                            client.multipartUpload(storeAs, file).then(function (result) {
                                console.log(result);
                                $.ajax({
                                    type:"post",
                                    url:"/savefiletodb",
                                    data:{
                                        category:category,
                                        belongs:belongs,
                                        filename:newname
                                    },
                                    success:function(res){
                                        console.log(res);
                                        alert("上传成功!")
                                    }
                                });
                            }).catch(function (err) {
                                console.log(err);
                            });
                        });
                });
            </script>
    <div id="hsDiv" style="display:none;">
        <div id="closediv">
            <a href="javascript:void(0);" onclick="closeDiv()"><img src="images/xxxx.png"></a>
        </div>
        <div id="dlTitle"><h>修改信息</h></div>

        <div id="tbdiv">
            <form  name="upload" enctype="multipart/form-data" method="post" action="upload" accept-charset="gbk">
                <table id="xiugaitb">
                        <tr>
                            <td class="xiugaitd1">头像：</td>
                            <td class="xiugaitd2"><input type="file" name="uploadfile" value=""></td>
                            <td><input type="submit" value="上传"></td>
                        </tr>
                        <tr>
                            <td class="xiugaitd1">性别：</td>
                            <td class="xiugaitd3">男<input type="radio" name="sex" value="男" checked>&nbsp;&nbsp;&nbsp;&nbsp;女<input type="radio" name="sex" value="女"></td>
                        </tr>
                        <tr>
                            <td class="xiugaitd1">邮箱：</td>
                            <td class="xiugaitd2"><input type="text" name="email" ></td>
                        </tr>
                        <tr>
                            <td class="xiugaitd1">地址：</td>
                            <td class="xiugaitd2"><input type="text" name="address" value=""></td>
                        </tr>
                        <tr>
                            <td class="xiugaitd1">职业：</td>
                            <td class="xiugaitd2"><input type="text" name="shenfen" value=""></td>
                        </tr>
                        <tr>
                            <td class="xiugaitd1">个性签名：</td>
                            <td class="xiugaitd2"><input type="text" name="stylenote" value=""><input type="hidden" name="rusername" value="<%=user.getUsername()%>"></td>
                        </tr>
                </table>
                <div>
                    <input type="submit" value="确定" style="width: 70px;height: 30px" id="yes">
                    <input type="button" onclick="closeDiv()" value="取消" style="width: 70px;height: 30px" id="no">
                </div>
            </form>
        </div>
    </div>
    <div id="overDiv" style="display:none;"></div>
    </body>

    <script>
        function savetomysql() {
            //window.location.reload("aboutus.jsp")
            alert("确定上传？")
        }
    </script>
</html>