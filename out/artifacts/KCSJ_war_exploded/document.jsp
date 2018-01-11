<%@ page import="javax.sql.rowset.CachedRowSet" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>课堂学习</title>
    <link rel="stylesheet" href="css/nav_left.css">
    <link rel="stylesheet" href="css/document_style.css">

    <%@ include file="head.jsp" %>
    <jsp:setProperty name="book" property="pageSize" param="pageSize"/>
    <jsp:setProperty name="book" property="currentPage" param="currentPage"/>
    <jsp:useBean id="book" class="bean.Book" scope="session"/>
        <%
    CachedRowSet rowSet = book.getRowSet();
    if (rowSet == null){
        out.print("没有查询到结果，无法浏览");
        return;
    }
    rowSet.last();
    int totalRecord = rowSet.getRow();          //全部记录数
    int pageSize = book.getPageSize();   //每页显示的记录数
    int totalpage = book.getTotalPages();
    if(totalRecord % pageSize == 0)
        totalpage = totalRecord / pageSize;         //总页数
    else
        totalpage = totalRecord /pageSize +1;
    book.setPageSize(pageSize);
    book.setTotalPages(totalpage);
    if (totalpage >= 1){
        if (book.getCurrentPage() < 1)
            book.setCurrentPage(book.getTotalPages());
        if (book.getCurrentPage() > book.getTotalPages())
            book.setCurrentPage(1);
        int index = (book.getCurrentPage()-1) * pageSize + 1;
        rowSet.absolute(index);
        boolean boo = true;%>
    <div class="content">
        <div class="classification">
            <ul>
                <li><a href="#">C++</a></li>
                <li><a href="#">JAVA</a></li>
                <li><a href="#">Python</a></li>
                <li><a href="#">PHP</a></li>
                <li><a href="#">操作系统</a></li>
                <li><a href="#">pascal</a></li>
            </ul>
        </div>


        <div class="doc-display">
            <%
                for (int i = 1; i<=pageSize&&boo;i++){
                    String bookname = rowSet.getString(2);
                    String bookimg = rowSet.getString(3);
                    String bookauther = rowSet.getString(4);
                    String bookcbs = rowSet.getString(5);
                    String bookintrudaction = rowSet.getString(6);
                    int bookdownload = rowSet.getInt(7);
                    int booksc = rowSet.getInt(8);
                    String belongto = rowSet.getString(9);
                    String belongs = rowSet.getString(10);
            %>
            <div class="doc-item">
                <div class="doc-img">
                    <%--这里放的图片尺寸应裁剪为3:2--%>
                    <img src="images/<%=bookimg%>" alt="" width="100%" height="100%">
                </div>
                <div class="doc-info">
                    <span><%=bookauther%>&nbsp;&nbsp;<%=bookcbs%></span>
                </div>
                <%--<div class="doc-record">--%>
                    <%--<div class="download-num">--%>
                        <%--下载量：<%=bookdownload%>--%>
                    <%--</div>--%>
                    <%--<div class="collect-num">--%>
                        <%--收藏量：<%=booksc%>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="doc-intro">
                        <span>  <%=bookintrudaction%></span>
                </div>
                <div class="function">
                    <div class="download">
                        <a href="http://mengzh.oss-cn-hangzhou.aliyuncs.com/book/<%=belongs%>/<%=bookname%>.pdf">查看</a>
                    </div>
                    <div class="collect">
                        <a href="">下载</a>
                    </div>
                </div>
            </div>
            <%
                        boo=rowSet.next();
                    }
                }
            %>
            <div class="button">
                <form action="" method="post" style="float: left">
                    <input type="hidden" name="currentPage" value="<%=book.getCurrentPage()-1 %>">
                    <input type="submit" name="g" value="上一页" style="margin-left:900px;margin-top:30px;">
                </form>
                <form  action="" method="post"<%--style="float: right"--%>>
                    <input type="hidden" name="currentPage" value="<%=book.getCurrentPage()+1 %>">
                    <input type="submit" name="g" value="下一页" style="margin-left:75px ;margin-top:30px;">
                </form>
            </div>
        </div>
    </div>
    </body>
</html>