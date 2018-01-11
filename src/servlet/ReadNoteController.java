/*
* 功能：读取笔记的内容
* */
package servlet;

import bean.Note;
import bean.Notes;
import net.sf.json.JSONObject;
import service.Impl.ReadnoteServiceImpl;
import service.ReadnoteService;
import utils.ResponseJson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ReadNoteController extends HttpServlet{
    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        String notename = request.getParameter("notename");
        HttpSession session = request.getSession(true);
//        Notes notes = (Notes) session.getAttribute("notes");
//        if (notes == null){
//            notes = new Notes();
//            session.setAttribute("notes",notes);
//        }

        ReadnoteService readnoteService = new ReadnoteServiceImpl();
        String notetext = readnoteService.read(notename);
        session.setAttribute("notetext",notetext);
        JSONObject json = new JSONObject();
        json.put("res",notetext);
        ResponseJson.responseJSON(response,json.toString());
    }
}
