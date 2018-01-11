<%@ page import="bean.SourceFile" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>资源整理</title>

    <link rel="stylesheet" href="css/nav_left.css">
    <link rel="stylesheet" href="css/source_style.css">

    <%@ include file="head.jsp" %>
    <script type="text/javascript" src="js/showlist.js"></script>
    <div class="content">
        <div class="main-in content-in">
            <div class="left-sider">
                <div class="operate">
                    <h3> 工具与资源列表 </h3>
                    <ul id="J_navlist">
                        <li >
                            <h4 >相关专业教程</h4>
                            <div class="list-item none">
                                <%for(int i=0;i<7;i++){%>
                                <p ><a href="javasctipt:void(0);" onclick='select_source("zh_expression_web_1_cd_X13-09212.iso")' target="_self">韩顺平java入门视频</a></p>
                                <%}%>
                                <%--<p ><a href="#" target="_self">马士兵java入门视频</a></p>--%>
                                <%--<p ><a href="#" target="_self">马士兵java入门视频</a></p>--%>
                                <%--<p ><a href="#" target="_self">马士兵java入门视频</a></p>--%>
                                <%--<p ><a href="#" target="_self">马士兵java入门视频</a></p>--%>
                                <%--<p ><a href="#" target="_self">马士兵java入门视频</a></p>--%>
                                <%--<p ><a href="#" target="_self">马士兵java入门视频</a></p>--%>
                                <p ><a href="#" target="_self">马士兵java入门视频</a></p>
                            </div>
                        </li>
                        <li >
                            <h4 >工具和资源</h4>
                            <div class="list-item none">
                                <p ><a href="#" target="_self">visual studio 2010</a></p>
                                <p ><a href="#" target="_self">visual studio 2013</a></p>
                                <p ><a href="#" target="_self">visual studio 2015</a></p>
                                <p ><a href="#" target="_self">visual studio 2017</a></p>
                            </div>
                        </li>
                        <li >
                            <h4 >应用程序</h4>
                            <div class="list-item none">
                                <p ><a href="#" target="_self">ACCESS 2.0</a></p>
                                <p ><a href="#" target="_self">ACCESS 2003</a></p>
                                <p ><a href="#" target="_self">ACCESS 2007</a></p>
                                <p ><a href="#" target="_self">ACCESS 2010</a></p>
                                <p ><a href="#" target="_self">ACCESS 2013</a></p>
                                <p ><a href="#" target="_self">ACCESS 2016</a></p>
                                <p ><a href="#" target="_self">AUTO ROUTE 2010</a></p>
                                <p ><a href="#" target="_self">AUTO ROUTE 2011</a></p>
                                <p ><a href="#" target="_self">AUTO ROUTE 2013</a></p>
                            </div>
                        </li>
                        <li >
                            <h4 >开发人员工具</h4>
                            <div class="list-item none">
                                <p ><a href="#" target="_self">ASP.NET</a></p>
                                <p ><a href="#" target="_self">MDBC</a></p>
                                <p ><a href="#" target="_self">ODBC DATA packs</a></p>
                                <p ><a href="#" target="_self">Visual Basic 2.0</a></p>
                            </div>
                        </li>
                        <li >
                            <h4 >服务器</h4>
                            <div class="list-item none">
                                <p ><a href="#" target="_self">SQL Server 2008 R2</a></p>
                                <p ><a href="#" target="_self">SQL Server 2016 CTP2.1</a></p>
                                <p ><a href="#" target="_self">SQL Server 2016 CTP2.3</a></p>
                            </div>
                        </li>
                        <li >
                            <h4 >设计人员工具</h4>
                            <div class="list-item none">
                                <p ><a href="#" target="_self">AutoCollage 2008</a></p>
                                <p ><a href="#" target="_self">Expression 1</a></p>
                                <p ><a href="#" target="_self">Expression 2</a></p>
                                <p ><a href="#" target="_self">Expression 3</a></p>
                                <p ><a href="#" target="_self">Expression 4</a></p>
                                <p ><a href="#" target="_self">Songsmith</a></p>
                            </div>
                        </li>
                        <li >
                            <h4 >其他问题</h4>
                            <div class="list-item none">
                                <p ><a href="#" target="_self">客服工作</a></p>
                            </div>
                        </li>
                    </ul>
                    <script type="text/javascript" language="javascript">
                        navList(12);
                    </script>
                </div>
            </div>
        </div>
        <%
            SourceFile file = (SourceFile)session.getAttribute("file");
            if(file != null){
        %>
        <div class="show">
            <div class="detail">
                <dl>
                    <dt><h3>文件名</h3></dt>
                    <dd><%=file.getFilename()%></dd>
                    <dt><h3>SHA1</h3></dt>
                    <dd><%=file.getSha1()%></dd>
                    <dt><h3>百度网盘</h3></dt>
                    <dd><a href="<%=file.getLocation()%>"><%=file.getLocation()%> </a>密码: <%=file.getFilepassword()%></dd>
                    <dt><h3>文件大小</h3></dt>
                    <dd><%=file.getFilesize()%></dd>
                    <dt><h3>发布时间</h3></dt>
                    <dd><%=file.getLoadTime()%></dd>
                </dl>
                <pre>
                    <%=file.getLianjie()%>
                </pre>
            </div>
        </div>
        <%}%>
    </div>
</div>
</body>
<script>
    function select_source(filename) {
        $.ajax({
            type:"post",
            url:"/select_sorece",
            data:{
                filename:filename
            },
            success:function(res){
                console.log(res);
                window.location.href="source.jsp";
            }
        });
    }
</script>
</html>