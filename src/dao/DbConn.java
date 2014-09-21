package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




public class DbConn {
   public Connection getConn()
   {
	   Connection conn=null;
	   String url="jdbc:oracle:thin:@localhost:1521:xe";
	   String username="system";
	   String password="system";
	  
	   try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection(url,username,password);
		if(conn!=null)
		{
			System.out.println("连接成功");
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return conn;
   }
   public static void main(String[] args)
   {
	   DbConn db=new DbConn();
	   db.getConn();
   }
}
