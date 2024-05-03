<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Person" %>
<%@ page import="com.bo.BO" %>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ApplicationContext a = new ClassPathXmlApplicationContext("Beans.xml");
BO dnbo = (BO) a.getBean("bo");
	

String username = request.getParameter("name");
String password = request.getParameter("upassword");

Person person = null;

person = dnbo.getPersonByUsernameAndPassword(username,password);
HttpSession httpSession = request.getSession();

httpSession.setAttribute("person",person);
System.err.println(person.getName()+"welcome to your login");

%>
login sucessfully

<form action="Login" method="get">
<% String n=request.getParameter("name");%>
<%= n+" welcome to your login"%>
</form>



</body>
</html>