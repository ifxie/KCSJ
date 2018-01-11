package servlet;

import bean.User;
import bean.User_detail;
import service.Impl.LoginServiceImpl;
import service.Impl.SelectServiceImpl;
import service.LoginService;
import service.SelectService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginController extends HttpServlet {

    //初始化
        public void init(ServletConfig config) throws ServletException {
            super.init(config);
        }

        //转码
        public String handleString(String s){
            try{  byte bb[]=s.getBytes("iso-8859-1");
                s=new String(bb);
            } catch(Exception ee){}
            return s;
        }

        //doPost
            public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
                doGet(request,response);
            }

            //doGet
            public  void  doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {

        //处理业务
        /*
        * 1、获取数据
        * 2、封装数据
        * 3、调用service层处理数据
        * 4、根据返回结果跳转页面或者返回数据
        * */
//        System.out.println(request.getParameter("username"));
        HttpSession session=request.getSession(true);
        //1、获取数据
        //String phoneNum = request.getParameter("phonenNum");
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();


        //2、封装数据
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        //3、调用service处理
        LoginService loginService = new LoginServiceImpl();
            SelectService selectService = new SelectServiceImpl();
        String resp_message = loginService.login(user);
        User newUser = loginService.selectUser(user.getUsername());
        try {
            User token;

            if (resp_message.equals("success")) {
                token = newUser;
                User_detail selectUser = new User_detail();
                selectUser.setUsername(token.getUsername());
                User_detail dUser = selectService.selectUser(selectUser);
                session.setAttribute("LoginToken",token);
                session.setAttribute("dUser",dUser);
                response.sendRedirect("index.jsp");
            }else {
                session.setAttribute("message",resp_message);
                response.sendRedirect("login.jsp");
            }
        }catch (Exception e){

        }

    }


}
