package servlet;

import bean.User_detail;
import service.Impl.SavefiletoDbServiceImpl;
import service.SavefiletoDbService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SavefiletodbController extends HttpServlet{
    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
        HttpSession session = request.getSession(true);
        User_detail user_detail = (User_detail)session.getAttribute("dUser");
        Date date = new Date();          // 获取一个Date对象
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateNowStr = sdf.format(date);
        //   讲日期时间转换为数据库中的timestamp类型
        System.out.println(request.getParameter("filename")+":"+request.getParameter("category")+request.getParameter("belongs")+":"+dateNowStr+":"+user_detail.getUsername());
        SavefiletoDbService savefiletoDbService = new SavefiletoDbServiceImpl();
        savefiletoDbService.save(request.getParameter("filename"),request.getParameter("category"),dateNowStr,user_detail.getUsername(),request.getParameter("belongs"));
    }
}
