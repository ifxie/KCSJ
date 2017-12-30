<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>课堂学习</title>

    <link rel="stylesheet" href="css/nav_left.css">
    <link rel="stylesheet" href="css/note_style.css">

    <%@ include file="head.txt" %>
    <div class="content">
        <div class="note-catalog">
            <div class="list">
                <ul class="yiji">
                    <li><a href="#">一级分类1</a></li>
                    <li><a href="#" class="inactive">一级分类2</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <ul>
                                    <li><a href="#">三级分类1</a></li>
                                    <li><a href="#">三级分类2</a></li>
                                    <li><a href="#">三级分类3</a></li>
                                    <li><a href="#">三级分类4</a></li>
                                    <li><a href="#">三级分类5</a></li>
                                </ul>
                            </li>
                            <li class="last"><a href="#">二级分类2</a>
                                <ul>
                                    <li><a href="#">三级分类1</a></li>
                                    <li><a href="#">三级分类2</a></li>
                                    <li><a href="#">三级分类3</a></li>
                                    <li><a href="#">三级分类4</a></li>
                                    <li><a href="#">三级分类5</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#" class="inactive">一级分类3</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <ul>
                                    <li><a href="#">三级分类1</a></li>
                                    <li><a href="#">三级分类2</a></li>
                                    <li><a href="#">三级分类3</a></li>
                                    <li><a href="#">三级分类4</a></li>
                                    <li><a href="#">三级分类5</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="inactive active">二级分类2</a>
                                <ul>
                                    <li><a href="#">三级分类1</a></li>
                                    <li><a href="#">三级分类2</a></li>
                                    <li><a href="#">三级分类3</a></li>
                                    <li><a href="#">三级分类4</a></li>
                                    <li><a href="#">三级分类5</a></li>
                                </ul>
                            </li>
                            <li class="last"><a href="#">二级分类3</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="inactive">一级分类4</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <ul>
                                    <li><a href="#">三级分类1</a></li>
                                    <li><a href="#">三级分类2</a></li>
                                    <li><a href="#">三级分类3</a></li>
                                    <li><a href="#">三级分类4</a></li>
                                    <li><a href="#">三级分类5</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="inactive active">二级分类2</a>
                                <ul>
                                    <ul>
                                        <li><a href="#">三级分类1</a></li>
                                        <li><a href="#">三级分类2</a></li>
                                        <li><a href="#">三级分类3</a></li>
                                        <li><a href="#">三级分类4</a></li>
                                        <li><a href="#">三级分类5</a></li>
                                    </ul>
                                </ul>
                            </li>
                            <li class="last"><a href="#">二级分类3</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="inactive">一级分类5</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <ul>
                                    <li><a href="#">三级分类1</a></li>
                                    <li><a href="#">三级分类2</a></li>
                                    <li><a href="#">三级分类3</a></li>
                                    <li><a href="#">三级分类4</a></li>
                                    <li><a href="#">三级分类5</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="inactive active">二级分类2</a>
                                <ul>
                                    <ul>
                                        <li><a href="#">三级分类1</a></li>
                                        <li><a href="#">三级分类2</a></li>
                                        <li><a href="#">三级分类3</a></li>
                                        <li><a href="#">三级分类4</a></li>
                                        <li><a href="#">三级分类5</a></li>
                                    </ul>
                                </ul>
                            </li>
                            <li class="last"><a href="#">二级分类3</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="inactive">一级分类6</a>
                        <ul style="display: none">
                            <li><a href="#" class="inactive active">二级分类1</a>
                                <ul>
                                    <li><a href="#">三级分类1</a></li>
                                    <li><a href="#">三级分类2</a></li>
                                    <li><a href="#">三级分类3</a></li>
                                    <li><a href="#">三级分类4</a></li>
                                    <li><a href="#">三级分类5</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="inactive active">二级分类2</a>
                                <ul>
                                    <ul>
                                        <li><a href="#">三级分类1</a></li>
                                        <li><a href="#">三级分类2</a></li>
                                        <li><a href="#">三级分类3</a></li>
                                        <li><a href="#">三级分类4</a></li>
                                        <li><a href="#">三级分类5</a></li>
                                    </ul>
                                </ul>
                            </li>
                            <li class="last"><a href="#">二级分类3</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <script type="text/javascript" src="js/notelist.js"></script>
        <div class="note-content">
            <div class="note-show">
                这里是笔记内容 与word文档大小一致
                <br>(794X1123)
            </div>
        </div>
        <div class="note-functions">

        </div>
    </div>
</div>
</body>
</html>