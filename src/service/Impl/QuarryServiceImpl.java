package service.Impl;

import bean.Filestorage;
import com.sun.rowset.CachedRowSetImpl;
import service.QuarryService;
import utils.GetConnectToMysql;

import javax.servlet.http.HttpSession;
import javax.sql.rowset.CachedRowSet;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class QuarryServiceImpl implements QuarryService {
    @Override
    public void quarry(String category ,String belongs,Filestorage filestorage){
        try{
            Connection connection = GetConnectToMysql.getconn();
            Statement sql = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs;
            if (belongs.equals("0")) {
                rs = sql.executeQuery("SELECT * FROM filestorage where category = '" + category+"'");
            }else{
                rs = sql.executeQuery("SELECT * FROM filestorage where category = '" + category+"' and belongs = '"+belongs+"'");
            }
            CachedRowSet rowSet=new CachedRowSetImpl();   //创建行集对象
            rowSet.populate(rs);
            filestorage.setRowSet((CachedRowSetImpl) rowSet);      //行集数据存储在dataBean中
            connection.close();                     //关闭连接
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
