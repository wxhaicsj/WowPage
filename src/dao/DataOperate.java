package dao;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

public class DataOperate {

	public static ResultSet getProduct(HttpServletRequest request)
	{
		ResultSet rs= null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@USER-Q1GPRSITGO:1521:XE", "system",
					"system");
			String sql="select * from wangxh";
			String chuanzhi=request.getParameter("pageye");
			int curpage=Integer.parseInt(chuanzhi);
			sql=Fenye.fenyemethod(curpage, "wangxh", 13, 5);
			
			PreparedStatement psmt =conn.prepareStatement(sql);
			rs= psmt.executeQuery();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public static int deleteMethod(HttpServletRequest request)
	{
		int rtn=0;
		System.out.println("deleteMethod before");
	
		String chk[]=request.getParameterValues("chk");
		System.out.println("chk==" + chk);
		if(chk==null)
			return 0;
		
		String sql="delete from wangxh where username in (";
		String sqlwhere=" ";
		for(int i=0;i<chk.length;i++)
		{
			
			sqlwhere = sqlwhere + "'" +  chk[i] + "'," ;
		}
		sql=sql+sqlwhere;

		int len=0;
		len=sql.length();

		sql=sql.substring(0, len-1);

		String sqlend=sql + ")";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@USER-Q1GPRSITGO:1521:XE", "system",
					"system");
			PreparedStatement psmt =conn.prepareStatement(sqlend);
			rtn=psmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rtn;
	}
	
}
