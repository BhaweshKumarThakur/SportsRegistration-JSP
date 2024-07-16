<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.ResultSet" %>
<%
final String Url = "jdbc:mysql://localhost:3306/sportsregistration";
final String Username = "root";
final String Password = "";

Connection conn;
PreparedStatement pst;
ResultSet rst;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(Url,Username,Password);
	if(conn!=null){
		int id = Integer.parseInt(request.getParameter("id"));
		String Query = "select * from playerData where id =?";
		pst = conn.prepareStatement(Query);
		pst.setInt(1,id);
		rst = pst.executeQuery();
		if(rst.next()){
			%>
			<center><h3>ID FOUND</h3>
			<table border = "5">
			<tr>
			<td>Full Name</td>
			<td><%=rst.getString(2) %></td>
			</tr>
			<tr>
			<td>University</td>
			<td><%=rst.getString(3) %></td>
			</tr>
			<tr>
			<td>Department</td>
			<td><%=rst.getString(4) %></td>
			</tr>
			<tr>
			<td>Email</td>
			<td><%=rst.getString(5) %></td>
			</tr>
			<tr>
			<td>Date Of Birth</td>
			<td><%=rst.getString(6) %></td>
			</tr>
			
			<tr>
			<td>Sports</td>
			<td><%=rst.getString(7) %></td>
			</tr>
			
			<tr>
			<td>Achievement</td>
			<td><%=rst.getString(8) %></td>
			</tr>
			
			<tr>
			<td>Status</td>
			<td><%=rst.getString(9) %></td>
			</tr>

			</table>
			</center>
			<center>
			<h2 ><a href="index.jsp" class="blink">click</a>  Here For New Registration</h2>
			</center>
			<%  
		}else{
			%>
			
			<h1 style="color:red">ID DOES NOT EXISTS.</h1>
			<h3><a href="index.jsp" class="blink">click</a>  Here For New Registration</h3>
			
			<%
		}
	}
	
}catch(Exception e){
	e.printStackTrace();
}





%>
    
    
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
