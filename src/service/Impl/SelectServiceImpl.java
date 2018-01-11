package service.Impl;

import bean.SourceFile;
import bean.User_detail;
import service.SelectService;
import utils.GetConnectToMysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class SelectServiceImpl implements SelectService {
    @Override
    public SourceFile select(String filename){
        SourceFile file = new SourceFile();
        try {
            //连接数据库
            Connection connection = GetConnectToMysql.getconn();
            String condition="select * from source where filename = '"+filename+ "'";
            Statement sql=connection.createStatement();
            ResultSet rs=sql.executeQuery(condition);
            rs.next();
            file.setFilename(rs.getString("filename"));
            file.setSha1(rs.getString("sha1"));
            file.setLocation(rs.getString("location"));
            file.setFilepassword(rs.getString("filepassword"));
            file.setFilesize(rs.getString("filesize"));
            file.setLoadTime(rs.getDate("loadtime"));
            file.setLianjie(rs.getString("lianjie"));
        }catch (Exception e){
            e.printStackTrace();
            file = null;
        }
        return file;
    }

    @Override
    public User_detail selectUser(User_detail user_detail){
        User_detail user_detail1_select = new User_detail();
        try {

            Connection connection = GetConnectToMysql.getconn();
            String condition = "select * from detial where username = '" + user_detail.getUsername() + "'";
            Statement sql = connection.createStatement();
            ResultSet rs = sql.executeQuery(condition);
            rs.next();
            user_detail1_select.setSex(rs.getString("sex"));
            user_detail1_select.setDizhi(rs.getString("dizhi"));
            user_detail1_select.setStylenote(rs.getString("stylenote"));
            user_detail1_select.setEmail(rs.getString("email"));
            user_detail1_select.setUsername(rs.getString("username"));
            user_detail1_select.setImg(rs.getString("img"));
            user_detail1_select.setShenfen(rs.getString("shenfen"));
        }catch (Exception e){
            e.printStackTrace();
            user_detail1_select = null;
        }
        return user_detail1_select;
    }

    @Override
    public String selectpath(String filename){
        String path = "";
        try {
            Connection connection = GetConnectToMysql.getconn();
            String condition = "select * from filestorage where filename = '"+filename+"'";
            Statement sql = connection.createStatement();
            ResultSet rs = sql.executeQuery(condition);
            rs.next();
            path = rs.getString("location");
        }catch (Exception e){
            e.printStackTrace();
        }
        return path;
    }
}
