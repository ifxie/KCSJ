package service.Impl;

import bean.Note;
import bean.Notes;
import com.sun.rowset.CachedRowSetImpl;
import service.ReadnoteService;
import utils.GetConnectToMysql;

import javax.servlet.http.HttpSession;
import javax.sql.rowset.CachedRowSet;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class ReadnoteServiceImpl implements ReadnoteService{
    @Override
    public String read(String notename){
        try {
            Connection connection = GetConnectToMysql.getconn();
            Statement sql = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs7;
            rs7 = sql.executeQuery("SELECT notes FROM note where notename = '"+notename+"'");
            rs7.next();
            String notetext = rs7.getString("notes");
            return notetext;
           // notes.setResult(notetext);
//            CachedRowSet rowSet7 = new CachedRowSetImpl();   //创建行集对象
//            rowSet7.populate(rs7);
//            notes.setRowSet7((CachedRowSetImpl) rowSet7);      //行集数据存储在dataBean中
          //  if(notes.getRowSet7() == null){System.out.println("null");}else {System.out.println("aaaaaaaaaaa"+notes.getRowSet7().getString("notes"));}

        }catch (Exception e){
            e.printStackTrace();
            return "";
        }
    }

}
