package servlet;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.jspsmart.upload.*;

public class FileUploadController extends HttpServlet {

    private ServletConfig config;
    /**
     * 初始化Servlet
     */
    final public void init(ServletConfig config) throws ServletException {
        this.config = config;
    }

    /**
     * 处理GET请求
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<BODY BGCOLOR='white'>");
        out.println("<H1>jspSmartUpload : Servlet Sample</H1>");
        out.println("<HR><BR>");
        out.println("The method of the HTML form must be POST.");
        out.println("</BODY>");
        out.println("</HTML>");
    }

    /**
     * 响应POST请求
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<BODY BGCOLOR='white'>");
        out.println("<H1>jspSmartUpload : Servlet Sample</H1>");
        out.println("<HR>");

        // 变量定义
        int count=0;
        SmartUpload mySmartUpload = new SmartUpload();

        try {
            // 初始化
            mySmartUpload.initialize(config,request,response);

            // 上载
            mySmartUpload.upload();
            com.jspsmart.upload.File f1 = mySmartUpload.getFiles().getFile(0);
            String name = f1.getFileName();
            // System.out.println (name);



            // 保存上载文件到指定目录
            // PATH为form表单提交过来的
            count = mySmartUpload.save(mySmartUpload.getRequest().getParameter("PATH"));
            //other为form表单提交过来的
            String other=mySmartUpload.getRequest().getParameter("other"); //这里可以对other进行处理
            //request.getParameter("PATH");request.gerParameter("other");

            // 显示处理结果
            out.println(count + " file uploaded.");

        } catch (Exception e){
            out.println("Unable to upload the file.<br>");
            out.println("Error : " + e.toString());
        }

        out.println("</BODY>");
        out.println("</HTML>");
    }
}
