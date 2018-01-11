package service.Impl;

import bean.Note;
import com.sun.rowset.CachedRowSetImpl;
import service.LoadnoteService;
import utils.GetConnectToMysql;

import javax.sql.rowset.CachedRowSet;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoadnoteServiceImpl implements LoadnoteService {
    @Override
    public void load(Note note){
        try {
            //连接数据库
            Connection connection = GetConnectToMysql.getconn();
            Statement sql = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs1,rs2,rs3,rs4,rs5,rs6;
            rs1 = sql.executeQuery("SELECT notename FROM note where notedir = 'dir1'");
            CachedRowSet rowSet1=new CachedRowSetImpl();   //创建行集对象
            rowSet1.populate(rs1);
            note.setRowSet1((CachedRowSetImpl) rowSet1);      //行集数据存储在dataBean中

            rs2 = sql.executeQuery("SELECT notename FROM note where notedir = 'dir2'");
            CachedRowSet rowSet2=new CachedRowSetImpl();   //创建行集对象
            rowSet2.populate(rs2);
            note.setRowSet2((CachedRowSetImpl) rowSet2);      //行集数据存储在dataBean中

            rs3 = sql.executeQuery("SELECT notename FROM note where notedir = 'dir3'");
            CachedRowSet rowSet3=new CachedRowSetImpl();   //创建行集对象
            rowSet3.populate(rs3);
            note.setRowSet3((CachedRowSetImpl) rowSet3);      //行集数据存储在dataBean中

            rs4 = sql.executeQuery("SELECT notename FROM note where notedir = 'dir4'");
            CachedRowSet rowSet4=new CachedRowSetImpl();   //创建行集对象
            rowSet4.populate(rs4);
            note.setRowSet4((CachedRowSetImpl) rowSet4);      //行集数据存储在dataBean中

            rs5 = sql.executeQuery("SELECT notename FROM note where notedir = 'dir5'");
            CachedRowSet rowSet5=new CachedRowSetImpl();   //创建行集对象
            rowSet5.populate(rs5);
            note.setRowSet5((CachedRowSetImpl) rowSet5);      //行集数据存储在dataBean中

            rs6 = sql.executeQuery("SELECT notename FROM note where notedir = 'dir6'");
            CachedRowSet rowSet6=new CachedRowSetImpl();   //创建行集对象
            rowSet6.populate(rs6);
            note.setRowSet6((CachedRowSetImpl) rowSet6);      //行集数据存储在dataBean中

            connection.close();                     //关闭连接
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
