package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class UserDao {
    public boolean addUser(User user)
    {
    	boolean bool=false;
    	Connection conn=null;
    	PreparedStatement psmt=null;
    	String sql="insert into wangxh values(?,?,?,?,?,?,?,?)";
    	conn=new DbConn().getConn();
    	try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1,user.getJspusername());
			psmt.setString(2,user.getJsppsw());
			psmt.setString(3,user.getJspyear());
			psmt.setString(4,user.getJspmonth());
			psmt.setString(5,user.getJspday());
			psmt.setString(6,user.getJspprovince());
		    psmt.setString(7,user.getJspcity());
			psmt.setString(8,user.getJspemail());
			
			int t=psmt.executeUpdate();
			if(t>0)
			{
				bool=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			try {
			if(psmt!=null)
			{
				
					psmt.close();
		    } 
			if(conn!=null)
			{
				conn.close();
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    return bool;
    }
    public List getUserByName(String jspusername)
    {
    	List userList=new ArrayList();
    	Connection conn=null;
    	PreparedStatement psmt=null;
    	ResultSet rs=null;
    	String sql="select jspusername,jsppsw,jspyear,jspmonth,jspday,jspprovince,jspcity,jspemail from wangxh where jspusername like'%'||?'%'";
    	conn=new DbConn().getConn();
    	try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1,jspusername);

			rs=psmt.executeQuery();
        while(rs.next())
        {
        	String username=rs.getString(1);
        	String psw=rs.getString(2);
        	String year=rs.getString(3);
        	String month=rs.getString(4);
        	String day=rs.getString(5);
        	String province=rs.getString(6);
        	String city=rs.getString(7);
        	String email=rs.getString(8);
        	User user=new User(username,psw,year,month,day,province,city,email);
        	userList.add(user);
        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			try {
			if(psmt!=null)
			{
				
					psmt.close();
		    } 
			if(conn!=null)
			{
				conn.close();
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
		return userList;
    }
}