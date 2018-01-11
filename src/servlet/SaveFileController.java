package servlet;

import service.Impl.SaveServiceImpl;
import service.SaveService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SaveFileController extends HttpServlet{

    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) {
        String htmltext = request.getParameter("htmltext");
        String dirs = request.getParameter("dirs");
        String name = request.getParameter("name");
        System.out.println("save");
        SaveService saveService = new SaveServiceImpl();
        if(saveService.save(dirs,htmltext,name).equals("success")){
            System.out.println("success");
        }else {
            System.out.println("fail");
        }
    }
}
