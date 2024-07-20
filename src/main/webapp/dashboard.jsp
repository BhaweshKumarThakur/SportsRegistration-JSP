<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.ResultSet" %>
<%
    final String Url = "jdbc:mysql://localhost:3306/sportsregistration";
    final String Username = "root";
    final String Password = "";

    Connection conn;
    PreparedStatement pst;
    ResultSet rst;
    %>
    
<% 
    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(Url, Username, Password);
        if(conn != null)
        {
        %>
        <head>
        <title>Sports Enrolment List 2024</title>
        </head>
        <center>
        <br>
        <h1>Sports Enrollment List 2024</h1>
        <hr>
        <table border="5">
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>University</th>
                <th>Department</th>
                <th>Email</th>
                <th>Date Of Birth</th>
                <th>Sports</th>
                <th>Achievement</th>
                <th>Status</th>
            </tr>
        <%
        String Query = "select * from playerData";
        pst  = conn.prepareStatement(Query);
        rst = pst.executeQuery();
        while(rst.next()){
        %>
         <tr>
                <td><%=rst.getInt(1)%></td>
                <td><b><%=rst.getString(2)%></b></td>
                <td><%=rst.getString(3)%></td>
                <td><%=rst.getString(4)%></td>
                <td><%=rst.getString(5)%></td>
                <td><%=rst.getString(6)%></td>
                <td><%=rst.getString(7)%></td>
                <td><%=rst.getString(8)%></td>
                <td><%=rst.getString(9)%></td>

                </tr>
        <%
        }
%>
        </table>
        <hr>
        <h3><a href = "index.jsp">Click</a>Here for New Registration.</h3>
        <br>
        <h3><a href = "Check_List.jsp">Click Here </a>to view using your ID</h3>
        </center>
        
            

<%
        }
    }

    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
