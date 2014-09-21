<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+"://"+request.getServerPort()+path+"/";

 %>
<% 
// if(request.getParameter("username").toString().equals("admin"))
 //{
   //  out.println("0");
  //}
  // else if(request.getParameter("username").equals(""))
 // {
//out.println("0");
  // }
  //else
 // {
   // out.println("1");
   //}
   

      String jspusername=request.getParameter("username").toString();
	
	
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@USER-Q1GPRSITGO:1521:XE", "system",
					"system");
		String sql="select username from wangxh";
		 PreparedStatement psmt = conn.prepareStatement(sql);
		 psmt.setString(1,jspusername);
         ResultSet rs = psmt.executeQuery();
         ResultSetMetaData rsmd=rs.getMetaData();
         int j=rsmd.getColumnCount();
        int m=0;
        while(rs.next())
        {
             for(int i=1;i<=j;i++)
            {
             String p=rs.getString(1);
             if(request.getParameter("username").equals(p))
             {
             
              
             }
             else
             {
              m=m+1;
             }              
             }
       }
out.println(""+m);
%>