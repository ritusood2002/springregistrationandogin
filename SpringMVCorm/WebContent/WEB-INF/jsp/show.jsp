<%@page import="com.model.Person"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.bo.BO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ApplicationContext acm=new ClassPathXmlApplicationContext("Beans.xml");
BO bo=(BO)acm.getBean("bo");
List<Person> list=bo.viewdata();

%>
<table border="1" cellspacing="0">
<tr>
<th>ID</th>
<th>NAME</th>

<th>GENDER</th>
<th>ADDRESS</th>
<th>CITY</th>
<th>STATE</th>
<th>Email</th>

<th>PASSWORD</th>
<th>EDIT</th>
<th >DELETE</th>
</tr>
<%

for(Person p:list)
{
    


%>

  <tr>
  <td><%=p.getId()%></td> <td><%=p.getName()%></td>
 
   <td><%=p.getGender()%></td>
   <td><%=p.getAddress()%></td>
 
  <td><%=p.getCity()%></td>
    <td><%=p.getState()%></td>
                        
                        <td><%=p.getEmail()%></td>
                          
                        <td><%=p.getPassword()%></td>
  
			<td>
				<form action="edit" method="post" name="edit">
					<input type="hidden" name="id" value="<%=p.getId()%>">
					<input type="submit" name="action" value="Edit"  style="color:white; background-color:blue">
				</form>
			</td>
			
			<td>
				<form action="delete" method="post" name="delete">
					<input type="hidden" name="id" value="<%=p.getId()%>">
					<input type="submit" name="action" value="Delete" style="color:white; background-color:red">
				</form>
			</td>
  </tr>

<%
}

%>

</table>
<a href="index">Add Data</a>
</body>
</html>