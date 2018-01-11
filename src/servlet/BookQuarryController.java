package servlet;

import bean.Book;
import service.BookQuarryService;
import service.Impl.BookQuarryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class BookQuarryController extends HttpServlet{
    //doPost
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        doGet(request,response);
    }

    //doGet
    public  void  doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
        request.setCharacterEncoding("utf-8");
        String category = request.getParameter("category");
        if (category == null) {
            category = "pdf";
        }
        HttpSession session = request.getSession(true);
        Book book = (Book) session.getAttribute("book");
        if (book == null){
            book = new Book();
            session.setAttribute("book",book);
        }
        BookQuarryService bookQuarryService = new BookQuarryServiceImpl();
        bookQuarryService.quarry(category,book);

    }
}
