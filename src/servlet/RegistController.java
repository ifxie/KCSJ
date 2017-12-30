package servlet;

import bean.User;
import service.Impl.LoginServiceImpl;
import service.Impl.RegistServiceImpl;
import service.LoginService;
import service.RegistService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RegistController extends HttpServlet {
    //初始化
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }


    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) {
        //处理业务
        /*
         * 1、获取数据
         * 2、封装数据
         * 3、调用service层处理数据
         * 4、根据返回结果跳转页面或者返回数据
         * */

        String phoneNum = request.getParameter("phoneNum").trim();
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();
        String code = request.getParameter("code").trim();
        String sec_password = request.getParameter("sec_password").trim();
        User user = new User();
        user.setPhoneNum(phoneNum);
        user.setUsername(username);
        user.setPassword(password);
        user.setContribution(10);

        RegistService registService = new RegistServiceImpl();
        HttpSession session = request.getSession(true);
        String codeOfsession = (String) session.getAttribute("code");

        try {
            if(code.equals(codeOfsession)) {
                String resp_message = registService.regist(user, sec_password);
                if (resp_message.equals("password different")) {
                    response.sendRedirect("login.jsp");
                    session.setAttribute("message", "password different");
                }
                if (resp_message.equals("注册成功")) {
                    response.sendRedirect("index.jsp");
                } else {
                    response.sendRedirect("login.jsp");
                    session.setAttribute("message", "信息填写有非法字符");
                }
            }else {
                response.sendRedirect("login.jsp");
                session.setAttribute("message", "验证码错误");
            }
        } catch (IOException e) {
                e.printStackTrace();
            }


    }

}
