<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<%
//String jspemail=request.getParameter("email");
//Class.forName("oracle.jdbc.driver.OracleDriver");
	//		Connection conn = DriverManager.getConnection(
		//			"jdbc:oracle:thin:@USER-Q1GPRSITGO:1521:XE", "system",
			//		"system");
//String sql = "select * from wangxh where email=?";
	//		PreparedStatement psmt = conn.prepareStatement(sql);
		//	psmt.setString(1, jspemail);
//ResultSet rs = psmt.executeQuery();










  if(request.getParameter("email").toString().equals("1179655098@qq.com"))
   {
      out.println("0");
   }
   else if(request.getParameter("email").equals(""))
   {
   out.println("0");
   }
   else
   {
   out.println("1");
  }
   


%>
