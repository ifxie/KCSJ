package servlet;

import bean.User_detail;
import service.Impl.SelectServiceImpl;
import service.SelectService;
import utils.NewMailUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SendMailController extends HttpServlet{
    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) {
        try {
            String username = request.getParameter("username");
            String filename = request.getParameter("filename");
            String to = request.getParameter("to");
            User_detail user_detail = new User_detail();
            user_detail.setUsername(username);
            SelectService selectService = new SelectServiceImpl();
            User_detail select_user = selectService.selectUser(user_detail);

            String filepath = selectService.selectpath(filename);

            NewMailUtil.sendEmailsWithOnlineAttachments(select_user,filepath,to,filename);

        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
