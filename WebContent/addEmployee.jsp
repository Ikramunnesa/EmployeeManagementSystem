<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<%@ page import="com.dal.EmployeeGateway"%>
<jsp:useBean id="e" class="com.bean.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="e" />

<%EmployeeGateway employeeGateway=new EmployeeGateway();
int i=employeeGateway.saveEmpoyee(e);
if(i>0)
	response.sendRedirect("/EMS/indexPage.jsp");
else
	response.sendRedirect("/EMS/addEmployeeForm.jsp");
%>
</body>
</html>