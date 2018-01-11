package servlet;

import bean.SourceFile;
import net.sf.json.JSONObject;
import service.Impl.SelectServiceImpl;
import service.SelectService;
import utils.ResponseJson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SelectController extends HttpServlet{
    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) {
        //接收数据
        String filename = request.getParameter("filename");

        //调用service处理
        SelectService selectService = new SelectServiceImpl();
        SourceFile sourceFile = selectService.select(filename);
        HttpSession session = request.getSession(true);
        session.setAttribute("file" ,sourceFile);
        //System.out.println(((SourceFile)session.getAttribute("file")).getFilename());
        JSONObject json = new JSONObject();
        try {
            json.put("res",1);
            ResponseJson.responseJSON(response,json.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
