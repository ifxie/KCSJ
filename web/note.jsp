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

    <%@ include file="head.txt" %>
    <div class="content">
        <div class="note-catalog">
            <div class="list">
                <ul class="yiji">
                    <li><a href="#">文件夹1</a></li>
                    <li><a href="#" class="inactive">文件夹2</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <%--<ul>--%>
                                    <%--<li><a href="#">三级分类1</a></li>--%>
                                    <%--<li><a href="#">三级分类2</a></li>--%>
                                    <%--<li><a href="#">三级分类3</a></li>--%>
                                    <%--<li><a href="#">三级分类4</a></li>--%>
                                    <%--<li><a href="#">三级分类5</a></li>--%>
                                <%--</ul>--%>
                            </li>
                            <li class="last"><a href="#">二级分类2</a>
                                <%--<ul>--%>
                                    <%--<li><a href="#">三级分类1</a></li>--%>
                                    <%--<li><a href="#">三级分类2</a></li>--%>
                                    <%--<li><a href="#">三级分类3</a></li>--%>
                                    <%--<li><a href="#">三级分类4</a></li>--%>
                                    <%--<li><a href="#">三级分类5</a></li>--%>
                                <%--</ul>--%>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#" class="inactive">文件夹3</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <%--<ul>--%>
                                    <%--<li><a href="#">三级分类1</a></li>--%>
                                    <%--<li><a href="#">三级分类2</a></li>--%>
                                    <%--<li><a href="#">三级分类3</a></li>--%>
                                    <%--<li><a href="#">三级分类4</a></li>--%>
                                    <%--<li><a href="#">三级分类5</a></li>--%>
                                <%--</ul>--%>
                            </li>
                            <li><a href="#" class="inactive active">二级分类2</a>
                                <%--<ul>--%>
                                    <%--<li><a href="#">三级分类1</a></li>--%>
                                    <%--<li><a href="#">三级分类2</a></li>--%>
                                    <%--<li><a href="#">三级分类3</a></li>--%>
                                    <%--<li><a href="#">三级分类4</a></li>--%>
                                    <%--<li><a href="#">三级分类5</a></li>--%>
                                <%--</ul>--%>
                            </li>
                            <li class="last"><a href="#">二级分类3</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="inactive">文件夹4</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <%--<ul>--%>
                                    <%--<li><a href="#">三级分类1</a></li>--%>
                                    <%--<li><a href="#">三级分类2</a></li>--%>
                                    <%--<li><a href="#">三级分类3</a></li>--%>
                                    <%--<li><a href="#">三级分类4</a></li>--%>
                                    <%--<li><a href="#">三级分类5</a></li>--%>
                                <%--</ul>--%>
                            </li>
                            <li><a href="#" class="inactive active">二级分类2</a>
                                <%--<ul>--%>
                                    <%--<ul>--%>
                                        <%--<li><a href="#">三级分类1</a></li>--%>
                                        <%--<li><a href="#">三级分类2</a></li>--%>
                                        <%--<li><a href="#">三级分类3</a></li>--%>
                                        <%--<li><a href="#">三级分类4</a></li>--%>
                                        <%--<li><a href="#">三级分类5</a></li>--%>
                                    <%--</ul>--%>
                                <%--</ul>--%>
                            </li>
                            <li class="last"><a href="#">二级分类3</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="inactive">文件夹5</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <%--<ul>--%>
                                    <%--<li><a href="#">三级分类1</a></li>--%>
                                    <%--<li><a href="#">三级分类2</a></li>--%>
                                    <%--<li><a href="#">三级分类3</a></li>--%>
                                    <%--<li><a href="#">三级分类4</a></li>--%>
                                    <%--<li><a href="#">三级分类5</a></li>--%>
                                <%--</ul>--%>
                            </li>
                            <li><a href="#" class="inactive active">二级分类2</a>
                                <%--<ul>--%>
                                    <%--<ul>--%>
                                        <%--<li><a href="#">三级分类1</a></li>--%>
                                        <%--<li><a href="#">三级分类2</a></li>--%>
                                        <%--<li><a href="#">三级分类3</a></li>--%>
                                        <%--<li><a href="#">三级分类4</a></li>--%>
                                        <%--<li><a href="#">三级分类5</a></li>--%>
                                    <%--</ul>--%>
                                <%--</ul>--%>
                            </li>
                            <li class="last"><a href="#">二级分类3</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="inactive">文件夹6</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <%--<ul>--%>
                                    <%--<li><a href="#">三级分类1</a></li>--%>
                                    <%--<li><a href="#">三级分类2</a></li>--%>
                                    <%--<li><a href="#">三级分类3</a></li>--%>
                                    <%--<li><a href="#">三级分类4</a></li>--%>
                                    <%--<li><a href="#">三级分类5</a></li>--%>
                                <%--</ul>--%>
                            </li>
                            <li><a href="#" class="inactive active">二级分类2</a>
                                <%--<ul>--%>
                                    <%--<ul>--%>
                                        <%--<li><a href="#">三级分类1</a></li>--%>
                                        <%--<li><a href="#">三级分类2</a></li>--%>
                                        <%--<li><a href="#">三级分类3</a></li>--%>
                                        <%--<li><a href="#">三级分类4</a></li>--%>
                                        <%--<li><a href="#">三级分类5</a></li>--%>
                                    <%--</ul>--%>
                                <%--</ul>--%>
                            </li>
                            <li class="last"><a href="#">二级分类3</a></li>
                        </ul>
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
                                UE.getEditor('editor');
                            </script>
                        </div>

                </div>
                <div class="keep-path">
                    <span>选择文件夹</span>
                    <select name="" id="">
                        <option value="">文件夹1</option>
                        <option value="">文件夹2</option>
                        <option value="">文件夹3</option>
                        <option value="">文件夹4</option>
                    </select>
                </div>
                <div class="note-keep-button">
                    <input type="button" value="保存">
                </div>
            </form>
        </div>
        <div class="note-functions">

        </div>
    </div>
</div>
</body>
</html>