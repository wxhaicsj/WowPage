<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%
UserDao userDao=new UserDao();
request.setCharacterEncoding("utf-8");
String jspusername=request.getParameter("username");
if(jspusername!=null&&!jspusername.equals("")){
String jsppsw=request.getParameter("psw");
String jspyear=request.getParameter("year");
String jspmonth=request.getParameter("month");
String jspday=request.getParameter("day");
String jspprovince=request.getParameter("province");
String jspcity=request.getParameter("city");
String jspemail=request.getParameter("email");
User u=new User(jspusername,jsppsw,jspyear,jspmonth,jspday,jspprovince,jspcity,jspemail);
userDao.addUser(u);
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>this is search face</title>
</head>
<body>
<form>
<table border=1>
<tr>
<th>客户编号</th>
<th>名称</th>
<th>地址</th>
<th>联系人</th>
<th>电话</th>
<th>银行</th>
<th>卡号</th>
</tr>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@USER-Q1GPRSITGO:1521:XE", "system",
					"system");
			String sql="select * from wangxh";
			
			PreparedStatement psmt =conn.prepareStatement(sql);
			
	    ResultSet rs= psmt.executeQuery();
	    ResultSetMetaData  rsmd = rs.getMetaData();
int colcount=rsmd.getColumnCount();
while(rs.next())
{
%>
<tr>
<td><input type="checkbox" name="chk" value="<%=rs.getString(1) %>" /></td>
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
<script language="javascript">
function delmeth()
{
alert("del run!");

document.searchface.flag.value="del";
document.searchface.submit();
}
function seameth()
{
alert("sea run!");

document.searchface.flag.value="sea";
document.searchface.submit();
}
</script>