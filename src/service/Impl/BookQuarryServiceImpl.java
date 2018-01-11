package service.Impl;

import bean.Book;
import com.sun.rowset.CachedRowSetImpl;
import service.BookQuarryService;
import utils.GetConnectToMysql;

import javax.sql.rowset.CachedRowSet;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class BookQuarryServiceImpl implements BookQuarryService {
    @Override
    public void quarry(String belongto, Book book){
        try{
            Connection connection = GetConnectToMysql.getconn();
            Statement sql = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs;
            rs = sql.executeQuery("SELECT * FROM book where belongto = '" + belongto+"'");
            CachedRowSet rowSet=new CachedRowSetImpl();   //创建行集对象
            rowSet.populate(rs);
            book.setRowSet((CachedRowSetImpl) rowSet);
            connection.close();                     //关闭连接
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
