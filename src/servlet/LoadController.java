package servlet;

import bean.Filestorage;
import bean.Note;
import service.Impl.LoadnoteServiceImpl;
import service.LoadnoteService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoadController extends HttpServlet{

    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) {
        HttpSession session = request.getSession(true);
        Note note = (Note) session.getAttribute("note");
        if (note == null){
            note = new Note();
            session.setAttribute("note",note);
        }
        LoadnoteService loadnoteService = new LoadnoteServiceImpl();
        loadnoteService.load(note);
    }
}
