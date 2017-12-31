<%@ page contentType="text/html;charset=GBK" %>

<html>
<head>
    <title>file upload</title>
</head>

<body>
<font size="5" color="#FF0000">
    <b>文件上传 - 使用jspsmart upload组件</b>
</font><br>

<form name="selectfile" enctype="multipart/form-data" method="post" action="upload">
    　<p>文件名称：
    　<input type="file" name="ulfile" size="20" maxlength="80"><br>
    　</p>
    <p>上传路径：
        　<input type="text" name="PATH" size="30" maxlength="50"><br>
        　</p>
    　<p>附加内容：
    　<input type="text" name="other" size="30" maxlength="50"><br>
    　</p>
    　<p>
    　<input type="submit" value="上传">
    　<input type="reset" value="清除">
    　</p>
</form>

</body>
</html>
