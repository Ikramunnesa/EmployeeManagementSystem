<%@page import="com.bean.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.dal.EmployeeGateway"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Employees Information</title>
</head>
<body style="background-color:powderblue;">

<%
EmployeeGateway employeeGateway=new EmployeeGateway();
List<Employee> empList=employeeGateway.getAllEmployee();
%>
<form><br>
<h1 style="margin: 0 auto;max-width:960px;text-align: center;">Show All Employees</h1>
<table>
<thead>
<tr>
<td><b></font><font color="black">Employee Id</font></b></td>
<td>
<td><b></font><font color="black">First Name</font></b></td>
<td>
<td><b></font><font color="black">Last Name</font></b></td>
<td>
<td><b></font><font color="black">Father Name</font></b></td>
<td>
<td><b></font><font color="black">Mother Name</font></b></td>
<td>
<td><b></font><font color="black">Email</font></b></td>
<td>
<td><b></font><font color="black">Date of Birth</font></b></td>
<td>
<td><b></font><font color="black">Address</font></b></td>
<td>
<td><b></font><font color="black">Contact</font></b></td>
<td>
<td><b></font><font color="black">Gender</font></b></td>
<td>
<td><b></font><font color="black">Department</font></b></td>
<td>
<td><b></font><font color="black">Designation</font></b></td>
<td>
<td><b></font><font color="black">NID</font></b></td>
<td>
<td><b></font><font color="black">Religion</font></b></td>
<td>
<td><b></font><font color="black">Maritual Status</font></b></td>
<td>
<td><b></font><font color="black">Joining Date</font></b></td>
<td>
<td><b></font><font color="black">Salary</font></b></td>
</tr>
</thead>
<tbody>
<%for (int i=0;i<empList.size();i++){ %>
<tr>
<td><%=empList.get(i).getEmployeeId() %></td>
<td>
<td><%=empList.get(i).getEmployeeFirstName() %></td>
<td>
<td><%=empList.get(i).getEmployeeLastName() %></td>
<td>
<td><%=empList.get(i).getFatherName() %></td>
<td>
<td><%=empList.get(i).getMotherName() %></td>
<td>
<td><%=empList.get(i).getEmail() %></td>
<td>
<td><%=empList.get(i).getDateofBirth() %></td>
<td>
<td><%=empList.get(i).getAddress() %></td>
<td>
<td><%=empList.get(i).getContact() %></td>
<td>
<td><%=empList.get(i).getGender() %></td>
<td>
<td><%=empList.get(i).getDepartment() %></td>
<td>
<td><%=empList.get(i).getDesignation() %></td>
<td>
<td><%=empList.get(i).getnId() %></td>
<td>
<td><%=empList.get(i).getReligion() %></td>
<td>
<td><%=empList.get(i).getMaritualStatus() %></td>
<td>
<td><%=empList.get(i).getJoinDate() %></td>
<td>
<td><%=empList.get(i).getSalary() %></td>

<%
}
%>
</tbody>
</table>

</form>
</body>
</html>