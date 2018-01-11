package service.Impl;

import service.SavefiletoDbService;
import utils.GetConnectToMysql;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

public class SavefiletoDbServiceImpl implements SavefiletoDbService {
    //转换编码格式
    public String handleString(String s) {
        try{ byte bb[]=s.getBytes("iso-8859-1");
            s=new String(bb);
        } catch(Exception ee){}
        return s;
    }

    @Override
    public  void save(String filename, String category, String date, String auther,String belongs){
        try {
            System.out.println(filename + category + date + auther);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");//设置日期格式
            java.util.Date data1 = sdf.parse(date);
            //连接数据库
            Connection connection = GetConnectToMysql.getconn();
            PreparedStatement pstmt=null;
            String sql = "INSERT INTO filestorage  VALUES (?,?,?,?,?,?)";
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1,filename);
            pstmt.setString(2,category+"/"+belongs);
            pstmt.setString(3,category);
            pstmt.setDate(4,new java.sql.Date (data1.getTime()));
            pstmt.setString(5,auther);
            pstmt.setString(6,belongs);
            int m = pstmt.executeUpdate();
            System.out.println(m);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
