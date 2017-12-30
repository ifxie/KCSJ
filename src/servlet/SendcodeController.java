package servlet;

import utils.PhoneUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SendcodeController extends HttpServlet {
    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) {
        try{
            HttpSession session = request.getSession(true);
            String phoneNum = request.getParameter("phoneNum");
            int codes= (int) ((Math.random()*9000)+1000);
            String result = PhoneUtils.Send_PhoneCode(phoneNum, codes + "");
            if(result.equals("success")){
                response.sendRedirect("login.jsp");
                session.setAttribute("code",codes+"");
            }else{
                response.sendRedirect("login.jsp");
                session.setAttribute("message","发送验证码失败");
            }
        }catch (Exception e){

        }

    }
}
