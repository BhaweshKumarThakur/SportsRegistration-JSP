<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display by Id</title>
</head>
<body>
<center>
<hr>
<h1>Check Student</h1>
<hr>
<form action = "CheckListBackand.jsp" method = "get">
<table border = "4">
<tr>
<th>Enter Id Number</th>
</tr>
<tr>
<td><input type = "number" name = "id" required></td>
</tr>
<tr>
<td ><button type = "submit" style="border: 2px solid red">Fetch</button></td>
</tr>
</hr>
</table>
</form>
</center>
</body>
</html>