<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<jsp:useBean id="testget" class="dao.DataOperate"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>this is search face</title>
</head>
<body>
<form>
<table border=1>
<tr>
<th></th>
<th>用户名</th>
<th>密码</th>
<th>年份</th>
<th>月份</th>
<th>日期</th>
<th>省份</th>
<th>城市</th>
<th>邮箱</th>
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