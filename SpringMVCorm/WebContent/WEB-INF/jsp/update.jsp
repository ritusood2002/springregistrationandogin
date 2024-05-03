<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <form action="update" method="post" name="update">
			
				
			<p>
				<input type="hidden" name="id" value="${p.id}">
			</p>
			
			<p>
				Enter Name:<input type="text" name="name" value="${p.name}">
			</p>
			
			<p>
				Enter Name:<input type="gender" name="ugender" value="${p.gender}">
			</p>
			
			<p>
				Enter Address:<input type="text" name="address" value="${p.address}">
			</p>
			<p>
				Enter City:<input type="text" name="ucity" value="${p.city}">
			</p>
			<p>
				Enter State:<input type="text" name="ustate" value="${p.state}">
			</p>
			<p>
				Enter Email:<input type="email" name="uemail" value="${p.email}">
			</p>
				<p>
				Enter Password:<input type="password" name="upassword" value="${p.password}">
			</p>
			
			<p>
				<input type="submit" value="update">
			</p>
			
		</form>
</body>
</html>