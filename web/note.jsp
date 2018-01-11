<%@ page import="javax.sql.rowset.CachedRowSet" %>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>课堂学习</title>

    <link rel="stylesheet" href="css/nav_left.css">
    <link rel="stylesheet" href="css/note_style.css">

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>

    <%@ include file="head.jsp" %>
    <jsp:useBean id="note" class="bean.Note" scope="session"/>
    <%
        CachedRowSet rowSet1 = note.getRowSet1();
        CachedRowSet rowSet2 = note.getRowSet2();
        CachedRowSet rowSet3 = note.getRowSet3();
        CachedRowSet rowSet4 = note.getRowSet4();
        CachedRowSet rowSet5 = note.getRowSet5();
        CachedRowSet rowSet6 = note.getRowSet6();
        %>
    <div class="content">
        <div class="note-catalog">
            <div class="list">
                <ul class="yiji">

                    <li><a href="javasctipt:void(0);" class="inactive">文件夹1</a>
                    <%
                        rowSet1.last();
                        int totalRecord1 = rowSet1.getRow();          //全部记录数
                        rowSet1.first();
                        boolean boo = true;
                        for (int i=0;i<totalRecord1&&boo;i++){
                    %>
                        <ul style="display: none">
                            <li><a href="javasctipt:void(0);"  onclick="readnote(this)" notename="<%=rowSet1.getString("notename")%>"><%=rowSet1.getString("notename")%></a>
                            </li>
                        </ul>
                        <%
                        boo = rowSet1.next();
                        }
                        %>
                    </li>

                    <li><a href="#" class="inactive">文件夹2</a>
                        <%
                            rowSet2.last();
                            int totalRecord2 = rowSet2.getRow();          //全部记录数
                            rowSet2.first();
                            boolean boo2 = true;
                            for (int i=0;i<totalRecord2&&boo2;i++){
                        %>
                        <ul style="display: none">
                            <li><a href="javasctipt:void(0);" class="inactive active" onclick="readnote(this)" notename="<%=rowSet2.getString("notename")%>"><%=rowSet2.getString("notename")%></a></li>
                        </ul>
                        <%
                                boo2 = rowSet2.next();
                            }
                        %>
                    </li>

                    <li><a href="#" class="inactive">文件夹3</a>
                        <%
                            rowSet3.last();
                            int totalRecord3 = rowSet3.getRow();          //全部记录数
                            rowSet3.first();
                            boolean boo3 = true;
                            for (int i=0;i<totalRecord3&&boo3;i++){
                        %>
                        <ul style="display: none">
                            <li><a href="javasctipt:void(0);" class="inactive active" onclick="readnote(this)" notename="<%=rowSet3.getString("notename")%>"><%=rowSet3.getString("notename")%></a></li>
                        </ul>
                        <%
                                boo3 = rowSet3.next();
                            }
                        %>
                    </li>

                    <li><a href="#" class="inactive">文件夹4</a>
                        <%
                            rowSet4.last();
                            int totalRecord4 = rowSet4.getRow();          //全部记录数
                            rowSet4.first();
                            boolean boo4 = true;
                            for (int i=0;i<totalRecord4&&boo4;i++){
                        %>
                        <ul style="display: none">
                            <li><a href="javasctipt:void(0);" class="inactive active"  onclick="readnote(this)" notename="<%=rowSet4.getString("notename")%>"><%=rowSet4.getString("notename")%></a></li>
                        </ul>
                        <%
                                boo4 = rowSet4.next();
                            }
                        %>
                    </li>

                    <li><a href="#" class="inactive">文件夹5</a>
                        <%
                            rowSet5.last();
                            int totalRecord5= rowSet5.getRow();          //全部记录数
                            rowSet5.first();
                            boolean boo5 = true;
                            for (int i=0;i<totalRecord5&&boo5;i++){
                        %>
                        <ul style="display: none">
                            <li><a href="javasctipt:void(0);" class="inactive active" onclick="readnote(this)" notename="<%=rowSet5.getString("notename")%>"><%=rowSet5.getString("notename")%></a></li>
                        </ul>
                        <%
                                boo5 = rowSet5.next();
                            }
                        %>
                    </li>

                    <li><a href="#" class="inactive">文件夹6</a>
                        <%
                            rowSet6.last();
                            int totalRecord6 = rowSet6.getRow();          //全部记录数
                            rowSet6.first();
                            boolean boo6 = true;
                            for (int i=0;i<totalRecord6&&boo6;i++){
                        %>
                        <ul style="display: none">
                            <li><a href="javasctipt:void(0);" class="inactive active" onclick="readnote(this)" notename="<%=rowSet6.getString("notename")%>"><%=rowSet6.getString("notename")%></a></li>
                        </ul>
                        <%
                                boo6 = rowSet6.next();
                            }
                        %>
                    </li>
                </ul>
            </div>
        </div>
        <script type="text/javascript" src="js/notelist.js"></script>
        <div class="note-content">
            <form action="" method="post">
                <div class="note-show">
                    <%--<textarea name="" style="width: 100%;height: 1200px;"></textarea>--%>

                    <div id="editor" style="height:980px">
                        <script type="text/javascript" charset="utf-8">
                            var ue = UE.getEditor('editor');
                        </script>
                    </div>

                </div>
                <div class="keep-path">
                    <span>选择文件夹</span>
                    <select name="" id="dir">
                        <option value="">dir1</option>
                        <option value="">dir2</option>
                        <option value="">dir3</option>
                        <option value="">dir4</option>
                        <option value="">dir5</option>
                        <option value="">dir6</option>
                    </select>
                </div>
                <div >
                    笔记名称：<input type="text" class="notename" id="notename" value="请输入笔记名称">
                </div>
                <div class="note-keep-button">
                    <input type="button" value="保存" onclick="save()">
                </div>
            </form>
        </div>
        <div class="note-functions">

        </div>
    </div>

    </body>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script>
        function save() {
            var htmltext = ue.getContent();

            var obj = document.getElementById("dir"); //定位id
            var index = obj.selectedIndex;
            var dirs = obj.options[index].text;

            var name =document.getElementById("notename").value;
            $.ajax({
                type:"post",
                url:"/save",
                data:{
                    htmltext:htmltext,
                    dirs:dirs,
                    name:name
                },
                success:function(res){
                    console.log(res);
                    alert("保存成功！")
                }
            });
        }

        function readnote(ele) {
           var notename = ele.getAttribute("notename")
            $.ajax({
                type:"post",
                url:"/readnote",
                data:{
                    notename:notename
                },
                success:function(res){
                    console.log(res);
                    ue.setContent(res.res)
                }
            });
        }

    </script>
</html>