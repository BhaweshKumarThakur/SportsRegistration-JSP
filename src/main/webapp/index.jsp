<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sports Registration Form</title>
<style>
  body{
    
   background-color: #3DBAC9;
    h2 {
        color: red;
    }
    hr {
        border: 1px solid black;
    }
    form {
        background-color: white;
        padding: 0px;
        border-radius: 0px;
        box-shadow: 0 0 15px rgba(0, 0, 10, 10);
        display: inline-block;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid black;
    }
    th, td {
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: blue;
    }
    input[type="text"], select {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid ;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        background-color: green;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: red;
    }
    a {
        color: black;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
		#name,#roll,#email,#department,#enrol{
		

		}
 
		.submit1,.submit2,.submit3,.submit4{
		width:160px;
		height:30px;
		border:none;
		text-decoration:none;
		color:white;
		font-size:16px;
		}
		.submit1{
		background-color:red;
      hover:white;
      cursor: pointer;
      border-radius: 8px; 
		}
  
		.submit2{
		background-color:skyblue;
      border-radius: 8px;

		}
		.submit3{
		background-color:skyblue;
     border-radius: 8px;
		}
		.submit4{
		background-color:skyblue;
      border-radius: 8px;
		}
		a{
		text-decoration:none;
		color:black;
		}
		table{
		font-size:20px;
		}
    a:hover {
  color: red;
    }
   a:active {
  color: green;
   }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            display: flex;
          
            overflow: hidden;
            background-color: lightblue;
        }

        .navbar a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 20px;
            text-decoration: underline;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        
        .navbar .logo {
            font-size: 20px;
            font-weight: bold;
        }

        .navbar .menu {
            flex: 1;
            display: flex;
            justify-content: flex-end;
        }
    </style>
    <div class="navbar">
        <a href="#home" class="logo">Sports <span style="color:Red;">Enrollment</span> List 2024</a>
    <div class="menu">
    <a href="index.jsp" target="_blank" >Home</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
    <a href="admin.jsp "target="_blank">Administator Login</a>
    </div>
    </div>


</head>
<body>
	<center>
		<!--<h1><u>Sports <span style="color:Red;">Enrollment</span> Form</u></h1>-->
		<hr>
		<form action="register.jsp" method="post">
			<table border="4">
				<tr>
					<td colspan="1" >Candidate Name</td>
					<td colspan="2" ><input  type="text" placeholder="Enter Name" id="name" name="name" required></td>
				</tr>
				<tr>
					<td colspan="1">Roll Number</td>
					<td colspan="2"><input type="text" placeholder="Enter Roll No" id="roll" name="roll" required></td>
				</tr>
				<tr>
					<td colspan="1">Email Address</td>
					<td colspan="2"><input type="text" placeholder="Enter Email" id="email" name="email" required></td>
				</tr>
				<tr>
					<td colspan="1">Date Of Birth (DD-MM-YYYY) :</td>
					<td colspan="2"><input type="text" placeholder="Enter DOB" id="dob" name="dob" required></td>
				</tr>
				<tr>
					<td colspan="1">Department</td>
					<td colspan="2"><select id="department" name="dept" placeholder="Select Department" required>
							<option value="CSE">Computer Science Engineering</option>
							<option value="ECE">Electronics and Communication Engineering</option>
							<option value="EEE">Electrical and Electronics Engineering</option>
							<option value="ME">Mechanical Engineering</option>
							<option value="CE">Civil Engineering</option>
					</select>
					</td>
				</tr>
				<tr>
				<td colspan="1">Sport of Interest</td>
					<td colspan="2"><select id="sport" name="sport" placeholder="Select Sport of Interest" required>
							<option value="Cricket">Cricket</option>
							<option value="Volleyball">Volleyball</option>
							<option value="Kabaddi">Kabaddi</option>
							<option value="Football">Football</option>
							<option value=" Tennis">Tennis</option>
					</select>
				<tr>
				<td colspan="1" >Achievement</td>
				<td colspan="2" ><input type="text" placeholder="Enter Achievement" id="ach" name="ach"></td>

				</tr>
				<tr>
					<td  colspan="1" style="text-align: center;"><input
						type="submit" value="Submit" class="submit1"></td>
						<td colspan="1" style="text-align: center;"><button class="submit2"><a  href="dashboard.jsp" >Display All</a></button></td>
						<td colspan="1" style="text-align: center;"><button class="submit3"><a  href="Check_List.jsp">Search ID</a></button></td>
				</tr>
				<tr>
					<td></td>
					<td colspan="1" style="text-align: center;"><button class="submit4"><a  href="Roll.jsp">Update</a></button></td>
					<td></td>
				</tr>

			</table>
		</form>
		<nav>
		<br>
		<a style="text-decoration:underline"  href="dashboard.jsp"target="_blank";><b>Dashboard</b></a> |
		<a style="text-decoration:underline"href="admin.jsp "target="_blank"><b>Administrator Login</b></a>
		</nav>
		
	</center>
</body>
</html>
