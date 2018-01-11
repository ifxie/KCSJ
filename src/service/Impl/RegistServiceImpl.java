package service.Impl;

import bean.User;
import service.RegistService;
import utils.GetConnectToMysql;
import utils.Sha1Utils;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegistServiceImpl  implements RegistService{

    //转换编码格式
    public String handleString(String s) {
        try{ byte bb[]=s.getBytes("iso-8859-1");
            s=new String(bb);
        } catch(Exception ee){}
        return s;
    }

    @Override
    public String regist(User user,String sec_password){
        try {
            //连接数据库
            Connection connection = GetConnectToMysql.getconn();
            PreparedStatement sql;
            ResultSet rs;

            //判断两次密码是否一样
            if(!user.getPassword().equals(sec_password)) {
                return "password different";
            }else{

                String insertCondition = "INSERT INTO user  VALUES (?,?,?,?)";
                sql = connection.prepareStatement(insertCondition);

                sql.setString(1, handleString(user.getPhoneNum()));
                sql.setString(2, handleString(user.getUsername()));
                String sha1_passwd =  Sha1Utils.sha1(user.getPassword());
                sql.setString(3, handleString(sha1_passwd));
                sql.setInt(4, user.getContribution());
                int m = sql.executeUpdate();

                String sqlstring = "INSERT INTO detial(username) VALUES (?)";
                sql = connection.prepareStatement(sqlstring);
                sql.setString(1,handleString(user.getUsername()));
                int mm = sql.executeUpdate();

                if (m != 0&&mm!=0) {
                    return "注册成功";
                }else {
                    return "注册失败";
                }
            }

        }catch (Exception e) {
            e.printStackTrace();
            return "注册失败";
        }
    }
}
