<%@ page contentType="text/html;charset=GBK" %>

<html>
<head>
    <title>file upload</title>
</head>

<body>
<font size="5" color="#FF0000">
    <b>�ļ��ϴ� - ʹ��jspsmart upload���</b>
</font><br>

<form name="selectfile" enctype="multipart/form-data" method="post" action="upload">
    ��<p>�ļ����ƣ�
    ��<input type="file" name="ulfile" size="20" maxlength="80"><br>
    ��</p>
    <p>�ϴ�·����
        ��<input type="text" name="PATH" size="30" maxlength="50"><br>
        ��</p>
    ��<p>�������ݣ�
    ��<input type="text" name="other" size="30" maxlength="50"><br>
    ��</p>
    ��<p>
    ��<input type="submit" value="�ϴ�">
    ��<input type="reset" value="���">
    ��</p>
</form>

</body>
</html>
