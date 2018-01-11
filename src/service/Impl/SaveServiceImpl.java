package service.Impl;

import service.SaveService;
import utils.GetConnectToMysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class SaveServiceImpl  implements SaveService {
    //转换编码格式
    public String handleString(String s) {
        try{ byte bb[]=s.getBytes("iso-8859-1");
            s=new String(bb);
        } catch(Exception ee){}
        return s;
    }
    @Override
    public String save(String dirs, String htmltext,String name) {

        try {
            //连接数据库
            Connection connection = GetConnectToMysql.getconn();
            String dirsd = handleString(dirs);


            String condition="INSERT INTO note (notedir,notes,notename) VALUES ('"+dirs+"','"+htmltext+"','"+name+"') ";

            PreparedStatement preparedStmt = connection.prepareStatement(condition);
            preparedStmt.execute();
//            Statement sql=connection.createStatement();
//            ResultSet rs=sql.executeQuery(condition);
//            rs.next();
            return "success";
        }catch (Exception e){
            e.printStackTrace();
            return "fail";
        }

    }
}
