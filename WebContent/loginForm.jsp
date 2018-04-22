<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn Form</title>
</head>
<body background="employee-management-system.jpg">

<h1 style="text align: center">Log In</h1>
<table>
<tr>
<td><b><label> Email :</label></b></td>
<td><input type="text" name="email" /></td>
</tr>
<tr>
<td><b><label> Password :</label></b></td>
<td><input type="text" name="password" /></td><br>
</tr>
<tr>
<td><label></label></td>
<td><input type="submit" value="Log In" /></td>
</tr>
</table>
</body>
</html>