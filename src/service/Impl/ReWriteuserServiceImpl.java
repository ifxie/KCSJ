package service.Impl;

import bean.User_detail;
import service.ReWriteuserService;
import utils.GetConnectToMysql;


import java.sql.Connection;
import java.sql.PreparedStatement;

public class ReWriteuserServiceImpl implements ReWriteuserService{
    @Override
    public String rewrite(User_detail user_detail){
        try {
            System.out.println(user_detail.getSex() + ":" + user_detail.getUsername() + ":" + user_detail.getDizhi() + ":" + user_detail.getEmail() + ":" + user_detail.getImg() + ":" + user_detail.getStylenote() + ":" + user_detail.getShenfen());
            //连接数据库
            Connection connection = GetConnectToMysql.getconn();

            // String sql="update (表名) set  (列名1)=?,列明2=? where (列名)=？";//注意要有where条件
            String sql ="update detial set sex=?,dizhi=?,stylenote=?,email=?,img=?,shenfen=? where username=?";
            PreparedStatement preStmt =connection.prepareStatement(sql);
            preStmt.setString(1,user_detail.getSex());
            preStmt.setString(2,user_detail.getDizhi());
            preStmt.setString(3,user_detail.getStylenote());
            preStmt.setString(4,user_detail.getEmail());
            preStmt.setString(5,user_detail.getImg());
            preStmt.setString(6,user_detail.getShenfen());
            preStmt.setString(7,user_detail.getUsername());
            int i=preStmt.executeUpdate();
            System.out.println(i);
            return "success";
        }catch (Exception e){
            e.printStackTrace();
            return "fail";
        }

    }
}
