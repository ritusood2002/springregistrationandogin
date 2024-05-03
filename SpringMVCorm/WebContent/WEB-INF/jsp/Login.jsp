<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="/js/index.js"></script>
</head>
<body>
<style>
form{
align-item:center;
border:2px solid #5885AF;
border-radius:15px;
width:400px;
height:300px;
background-color:#D4F1F4; 
margin-left: 400px;
margin-top: 40px;

}
h1{
text-align: center;
color:#189AB4;
}
.welcome-message{
text-align: center;
color: #75E6DA;
}

p{
align-item:center;
justify-content: center;
text-align: center;
margin-left: 20px;

}
.btn.btn-primary{
align-item:center;
justify-content: center;
text-align: center;
padding: 10px;
border-radius:10px;
width:100px;
background-color:  #003060;
color: 
white;

}
</style>
 
<form action="signin" method="post" >
<div class="welcome-message">
    <h1>Welcome back!</h1>
  </div>
<h1>Employee Login page</h1>
			
			<p>
				Enter name:<input type="text" name="name">
			</p>
			<p>
				Enter password:<input type="password" name="upassword">
			</p>
			<p>
				<input type="submit" value="signin" class="btn btn-primary">
			</p>
			</form>

</body>
</html>