<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%
    final String Url = "jdbc:mysql://localhost:3306/sportsregistration";
    final String Username = "root";
    final String Password = "";

    Connection conn;
    PreparedStatement pst;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(Url, Username, Password);
        if (conn != null) {
            String name = request.getParameter("name");
            String roll = request.getParameter("roll");
            String dept = request.getParameter("dept");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String sport = request.getParameter("sport");
            String ach = request.getParameter("ach");

            String query = "INSERT INTO playerData(F_name, University, Department, Email, DOB, Sports, Achivement, ApplicationStatus) VALUES(?,?,?,?,?,?,?,?)";
            pst = conn.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, roll);
            pst.setString(3, dept);
            pst.setString(4, email);
            pst.setString(5, dob);
            pst.setString(6, sport);
            pst.setString(7, ach);
            pst.setString(8, "Application Pending");
            pst.executeUpdate();
%>			
			
            <h1><b>Thanks for your enrollment!</b></h1>
            
            <hr>
            <h2>Wait for the approval</h2>
            <a href="index.jsp"target="_blank">Click Here for home page</a>
           <!--   <a href="dashboard.jsp">Click Here </a><h3>to check status</h3> -->
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
%>
        <h1>Server temporarily down for maintenance. Try again later.</h1>
        <a href="index.jsp">Click Here</a><h3>for home page</h3>
        <%
    }
%>

