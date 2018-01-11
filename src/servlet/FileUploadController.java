package servlet;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

import bean.User_detail;
import com.jspsmart.upload.*;
import service.Impl.ReWriteuserServiceImpl;
import service.ReWriteuserService;

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
            request.setCharacterEncoding("utf-8");
            // 上载
            mySmartUpload.upload();
            com.jspsmart.upload.File f1 = mySmartUpload.getFiles().getFile(0);
            String name = f1.getFileName();
            System.out.println (name);



            // 保存上载文件到指定目录
            // PATH为form表单提交过来的
            String basepath = "F:\\IdeaProject\\KCSJ\\web\\images\\users";
            count = mySmartUpload.save(basepath);
            //other为form表单提交过来的
            String sex=mySmartUpload.getRequest().getParameter("sex");
            String email=mySmartUpload.getRequest().getParameter("email");
            String address=mySmartUpload.getRequest().getParameter("address");
            String shenfen=mySmartUpload.getRequest().getParameter("shenfen");
            String stylenote=mySmartUpload.getRequest().getParameter("stylenote");
            String username=mySmartUpload.getRequest().getParameter("rusername");

            User_detail reuser = new User_detail();
            reuser.setSex(sex);
            reuser.setDizhi(address);
            reuser.setStylenote(stylenote);
            reuser.setEmail(email);
            reuser.setUsername(username);
            reuser.setImg("users/"+name);
            reuser.setShenfen(shenfen);
            ReWriteuserService reWriteuserService = new ReWriteuserServiceImpl();
            String res = reWriteuserService.rewrite(reuser);
            //request.getParameter("PATH");request.gerParameter("other");

            // 显示处理结果
            out.println(count + " file uploaded."+res);

        } catch (Exception e){
            out.println("Unable to upload the file.<br>");
            out.println("Error : " + e.toString());
        }

        out.println("</BODY>");
        out.println("</HTML>");
    }
}
