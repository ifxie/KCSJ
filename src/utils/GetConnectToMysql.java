package utils;

//用于连接数据库的类

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;

public class GetConnectToMysql {


    public static Connection getconn() throws NamingException {
        try  {
            Context initCtx = new InitialContext();
            Context ctx = (Context) initCtx.lookup("java:comp/env");
            DataSource ds =(DataSource)ctx.lookup("jdbc/mydb");
            Connection conn = ds.getConnection();
            return  conn;
        }catch (Exception e){
            return null;
        }

    }
}
