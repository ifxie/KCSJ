<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/2
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="com.sun.rowset.*" %>
<%@ page import="javax.sql.rowset.CachedRowSet" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="filestorage" class="bean.Filestorage" scope="session"/>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="css/filelistshow_style.css">
    <link rel="stylesheet" href="css/class_style.css">
    <link rel="stylesheet" href="css/nav_left.css">

    <%@ include file="head.jsp" %>

<jsp:setProperty name="filestorage" property="pageSize" param="pageSize"/>
<jsp:setProperty name="filestorage" property="currentPage" param="currentPage"/>
<%
    CachedRowSet rowSet = filestorage.getRowSet();
    if (rowSet == null){
        out.print("没有查询到结果，无法浏览");
        return;
    }
    rowSet.last();
    int totalRecord = rowSet.getRow();          //全部记录数
    int pageSize = filestorage.getPageSize();   //每页显示的记录数
    int totalpage = filestorage.getTotalPages();
    if(totalRecord % pageSize == 0)
        totalpage = totalRecord / pageSize;         //总页数
    else
        totalpage = totalRecord /pageSize +1;
    filestorage.setPageSize(pageSize);
    filestorage.setTotalPages(totalpage);
    if (totalpage >= 1){
        if (filestorage.getCurrentPage() < 1)
            filestorage.setCurrentPage(filestorage.getTotalPages());
        if (filestorage.getCurrentPage() > filestorage.getTotalPages())
            filestorage.setCurrentPage(1);
        int index = (filestorage.getCurrentPage()-1) * pageSize + 1;
        rowSet.absolute(index);
        boolean boo = true;%>
        <div class="choiceClass">
            <form action="" method="post" style="margin-left: 5%">
                <span>选择课程：</span>
                <select id="selectId">
                    <option value="jsp">jsp</option>
                    <option value="php">php</option>
                    <option value="c++">cpp</option>
                </select>
                <span>选择模块：</span>
                <select id="selectId2">
                    <option value="ppt">ppt</option>
                    <option value="skzl">skzl</option>
                    <option value="khzy">khzy</option>
                </select>
                <input type="button" name="g" value="确定" onclick="belongto()">
            </form>
        </div>
    <div class="collection-container">
        <div class="title-wrap">
            <p class="dynamtic-title">
                课堂内容
            </p>
        </div>
        <%
        for (int i = 1; i<=pageSize&&boo;i++){
            String filename = rowSet.getString(1);
            String location = rowSet.getString(2);
            String category = rowSet.getString(3);
            Date loadtime = rowSet.getDate(4);
            String auther = rowSet.getString(5);%>
            <%--<div style="width: 1200px;height: 40px; margin: auto;">--%>
                <%--<a href="#"><span><%=filename%>&nbsp;&nbsp;<%=auther%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=loadtime%></span></a>--%>
            <%--</div>--%>


        <div class="collection-noting">
            发布时间 <%=loadtime%>
        </div>
        <div class="collection-item">
            <div class="collection-content">
                    <img src="images/resource_img/123123.jpg" alt="" width="240px" height="160px">
                    <div class="collection-content-desc">
                        <div class="subtitle" id="<%=filename%>">
                            <%=filename%>
                        </div>
                        <div class="describe">
                            <%--资源类型  发布的作业，课堂资料，PPT--%>
                            <%--<span>类型</span>--%>
                            <%--&lt;%&ndash;资源大小&ndash;%&gt;--%>
                            <%--<span class="emm">63.25MB</span>--%>
                            <%--资源教师--%>
                            <span class="emm" id="<%=auther%>"><%=auther%></span>
                        </div>
                        <%--<div class="detail">--%>
                        <%--//这里是对内容的描述.--%>
                        <%--</div>--%>
                        <div class="function">
                            <a href="http://mengzh.oss-cn-hangzhou.aliyuncs.com/<%=location%>/<%=filename%>">下载</a>
                            <a href="https://view.officeapps.live.com/op/view.aspx?src=http://mengzh.oss-cn-hangzhou.aliyuncs.com/<%=location%>/<%=filename%>">预览</a>
                            <button value="发送" name="" class="send-button" onclick="handleClick(this)" fileName=<%=filename%> author=<%=auther%> >发送</button>
                        </div>
                    </div>
            </div>
        </div>
<%
            boo=rowSet.next();
        }
    }
%>
    </div>
    <div class="homework-part disappear" >
        <div class="system-lan">
            上交作业
            <div class="exit">Esc</div>
        </div>
        <form>
            <div class="homework-info">
            <%
                if (user == null){
                    user = new User();
                    //user.setContribution(0);
                }
            %>

                <span><font size="5">上传者：</font></span>
                <font size="5"><span class="homework-user" id="homework-user">

                </span></font>
                <br>
                <br>
                <span><font size="5">文档名称：</font></span>
                <font size="5"><span class="homework-name" id="homework-name"></span></font>
                <br>
                <br>
                <span><font size="4">上交时间:</font></span>
                <%SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");%>
                <span><font size="4"><%=df.format(new Date())%></font></span>
                <br>
                <br>
            </div>
            <div class="homework-submit" style="margin-top: 10px">
                <span>目的邮箱</span>
                <input type="text" id="tomailaddress" name="tomailaddress">
                <input type="button" value="发送" onclick="sendemail()">
            </div>
        </form>
    </div>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<FORM action="" method=post>--%>
                    <%--<Input type=hidden name="currentPage" value="<%=filestorage.getCurrentPage()-1 %>">--%>
                    <%--<Input type=submit name="g" value="上一页" style="float: right">--%>
                <%--</FORM>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<FORM action="" method=post>--%>
                    <%--<Input type=hidden name="currentPage" value="<%=filestorage.getCurrentPage()+1 %>">--%>
                    <%--<Input type=submit name="g" value="下一页" >--%>
                <%--</FORM>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<div class="button">
    <form action="" method="post" style="float: left">
        <input type="hidden" name="currentPage" value="<%=filestorage.getCurrentPage()-1 %>">
        <input type="submit" name="g" value="上一页" style="margin-right: 5px">
    </form>
    <form  action="" method="post"style="float: right">
        <input type="hidden" name="currentPage" value="<%=filestorage.getCurrentPage()+1 %>">
        <input type="submit" name="g" value="下一页" style="margin-left: 5px">
    </form>
</div>
</body>
<script src="./js/jquery.min.js"></script>
<script>
    function belongto() {
        var obj = document.getElementById("selectId"); //定位id
        var index = obj.selectedIndex;
        var belongs = obj.options[index].text;

        var obj2 = document.getElementById("selectId2"); //定位id
        var index2 = obj2.selectedIndex;
        var category = obj2.options[index2].text;
        $.ajax({
            type:"post",
            url:"/quarry",
            data:{
                category:category,
                belongs:belongs
            },
            success:function(res){
                console.log(res);
                window.location.href="filelistshow.jsp";
            }
        });
    }

    function sendemail() {
        var username = document.getElementById("homework-user").innerText;
        var filename = document.getElementById("homework-name").innerText;
        var to = document.getElementById("tomailaddress").value;
        alert(username+filename+to)
        $.ajax({
            type:"post",
            url:"/sendmail",
            data:{
                username:username,
                filename:filename,
                to:to
            },
            success:function(res){
                console.log(res);
                window.location.href="filelistshow.jsp";
            }
        });
    }
</script>
    <script>
        function handleClick(ele) {
           var fileName =  ele.getAttribute("fileName")
            var author  = ele.getAttribute("author")
            $(".homework-name").empty()
            $(".homework-user").empty()

            $(".homework-name").append(fileName)
            $(".homework-user").append(author)

            var m=$('.homework-part');
            m.removeClass("disappear");

            $(".exit").click(function () {
                var m=$('.homework-part');
                m.addClass("disappear");
            })
        }


    </script>
</html>
