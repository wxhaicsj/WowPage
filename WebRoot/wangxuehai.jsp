<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>this is search face</title>
</head>
<body>
<form action="wangxuehai.jsp" >
<input type="submit" value="查询">
<table border=1>
<tr>

<th>客户编号—wxh</th>
<th>名称-wxh</th>
<th>地址-wxh</th>
<th>联系人-wxh</th>
<th>电话-wxh</th>
<th>银行-wxh</th>
<th>卡号-wxh</th>
</tr>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@USER-Q1GPRSITGO:1521:XE", "system",
					"system");
			String sql="select * from wangxuehaibb";
			
			PreparedStatement psmt =conn.prepareStatement(sql);
			
	    ResultSet rs= psmt.executeQuery();
	    ResultSetMetaData  rsmd = rs.getMetaData();
int colcount=rsmd.getColumnCount();
while(rs.next())
{
%>
<tr>
<%
	for(int j=1;j<=colcount;j++)
	{
	//out.println(rs.getString(j));
	%><td><%=rs.getString(j)%></td><%	
	}
%>
</tr>
<%	
//out.println(rs.getString(1~n));
}
 %>



</table>
</form>
</body>
</html>