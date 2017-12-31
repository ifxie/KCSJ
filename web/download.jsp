<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/31
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.jspsmart.upload.SmartUpload" %>
<%
    String filename = request.getParameter("file");
    System.out.println(filename);
    SmartUpload su = new SmartUpload();

    su.initialize(pageContext);
    su.setContentDisposition(null);
    System.out.println(filename);
    su.downloadFile("F:\\IdeaProject\\KCSJ\\web\\WEB-INF\\upload\\"+filename);
%>
