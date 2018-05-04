<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<%@ page import="com.dal.RegisterGateway"%>
<jsp:useBean id="r" class="com.bean.Register"></jsp:useBean>
<jsp:setProperty property="*" name="r" />

<%
RegisterGateway registerGateway=new RegisterGateway();
int i=registerGateway.saveRegister(r);
if(i>0)
	response.sendRedirect("/EMS/indexPage.jsp");
else
	response.sendRedirect("/EMS/registerForm.jsp");
%>
</body>
</html>