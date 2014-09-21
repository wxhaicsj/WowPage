<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
		<%
		


			String jspusername = request.getParameter("username");
			String jsppsw = request.getParameter("psw");
	
			
			if(jspusername==null||jspusername.equals(""))
			{}
			else{
			System.out.println("db------------11111111111111111111");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@USER-Q1GPRSITGO:1521:xe", "system",
					"system");
								System.out.println("db------------2222222222222");
			
			String sql = "select * from wangxh where username=? and psw=?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			System.out.println("db------------3333333333333");
			psmt.setString(1, jspusername);
			psmt.setString(2, jsppsw);
			
			ResultSet rs = psmt.executeQuery();
					System.out.println("db------------44444444444444444");
			
			if (rs.next()) {
				System.out.println("welcome");
				
		%>
		<jsp:forward page="wxh.html"></jsp:forward>
		<%
		} else {
		%>
		<div>
			<p align="center">
				<font color=red> <%
 out.println("please input userid and password again!");
 %> </font>
			</p>
		</div>
		<%
			//若存在，则welcome ，否则显示错误信息
			}
			}
		%>



    <title></title>
    <link href="css/yhdl.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wxh_ydl">
<form action="yhdl.jsp" method="post" name="loginform">
<span class="pass"><em>用户名</em></span>
    <input class="kan" type="text" name="username" value="" style="position: absolute;top:50px ;left: 0px">
<span class="mim"><em>密码</em></span>
    <input class="kan" type="text" name="psw" value="" style="position: absolute;top: 150px;left: 0px">
    <input class="btn" type="submit" name="btn" value="登陆"
           style="position: absolute;top:220px;left: 0px;font-size: 20px;
           color:#DAA520;font-weight:bold;text-align: left;word-spacing: 30px;text-align: center;text-shadow:  2px 2px 2px #FF0000;
           font-style:italic ;letter-spacing: 20px">
</form>

</div>
<div class="wxh_ydl_jl">
    <h2 class="bbk1" style="font-weight: bold;text-align: center;color: cornflowerblue;margin: 0px;">获奖者名单</h2>
    <marquee  direction="up" vspace="10" height="200px" scrollamount="3" onmouseout="this.start()" onmouseover="this.stop()">
        <ul>
            <li><em>1 133****2098 王**</em></li>           
            <li><em>2 135****4089 张**</em></li>           
            <li><em>3 187****6598 李**</em></li>           
            <li><em>4 152****8798 孙**</em></li>           
            <li><em>5 158****4698 孙**</em></li>           
            <li><em>6 156****7898 王**</em></li>           
            <li><em>7 154****2698 郑**</em></li>           
            <li><em>8 138****1998 陈**</em></li>           
            <li><em>9 137****4598 范**</em></li>           
        </ul>
    </marquee>
</div>
</body>
</html>