package service.Impl;

import bean.User;
import service.LoginService;
import utils.GetConnectToMysql;
import utils.Sha1Utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginServiceImpl  implements LoginService{
    @Override
    public String login(User user){
        try{
            //连接数据库
            Connection connection = GetConnectToMysql.getconn();
            //获取前端页面传进的参数
            String name = user.getUsername();
            String passwd = user.getPassword();

            //根据name获取数据库中的密码
            String sha1_password = Sha1Utils.sha1(passwd);
            String condition="select * from user where username = '"+name+ "'";
            Statement sql=connection.createStatement();
            ResultSet rs=sql.executeQuery(condition);
            rs.next();
            String sql_passwd = rs.getString("password");
            if(sql_passwd.equals(sha1_password)){
                return "success";
            }else{
                return "fail";
            }
        }catch (Exception e){
            return "fail";
        }

    }

    @Override
    public User selectUser(String name){
        User user1 = new User();
        try{
            //连接数据库
            Connection connection = GetConnectToMysql.getconn();
            String condition="select * from user where username = '"+name+ "'";
            Statement sql=connection.createStatement();
            ResultSet rs=sql.executeQuery(condition);
            rs.next();
            user1.setPhoneNum(rs.getString("phoneNum"));
            user1.setUsername(rs.getString("username"));
            user1.setPassword(rs.getString("password"));
            user1.setContribution(rs.getInt("contribution"));
        }catch (Exception e){
            e.printStackTrace();
        }
        return user1;
    }

}
