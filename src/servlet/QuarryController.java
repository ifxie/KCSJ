package servlet;

import bean.Filestorage;
import com.sun.rowset.CachedRowSetImpl;
import service.Impl.QuarryServiceImpl;
import service.QuarryService;
import utils.GetConnectToMysql;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.CachedRowSet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class QuarryController extends HttpServlet {

    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
            request.setCharacterEncoding("utf-8");
            String category = request.getParameter("category");
            String belongs = request.getParameter("belongs");

            if (category == null) {
                category = "ppt";
            }


            HttpSession session = request.getSession(true);
            Filestorage filestorage = (Filestorage) session.getAttribute("filestorage");
            if (filestorage == null){
                filestorage = new Filestorage();
                session.setAttribute("filestorage",filestorage);
            }
        QuarryService quarryService = new QuarryServiceImpl();
        quarryService.quarry(category,belongs,filestorage);
   }
}
