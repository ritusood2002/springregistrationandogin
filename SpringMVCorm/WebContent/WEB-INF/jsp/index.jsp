<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SpringMVC ORM</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<style>
form{
align-item:center;
border:2px solid #5885AF;
border-radius:15px;
width:550px;
height:460px;
background-color:#D4F1F4; 
margin-left: 400px;
margin-top: 40px;

}


h3 {
color:#189AB4;
align-item:center;
justify-content: center;
margin-top:10px;
margin-bottom:10px;
text-align: center;
padding: 20px;



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

<form action="insert" method="post" name="insert">
			<h3>Employee Registration Page</h3>
			<p>
				Enter Name:<input type="text" name="name">
			</p>
			<p>
			Gender:
        <label for="male">Male</label>
        <input type="radio" name="ugender" id="male" value="male" checked>
        <label for="female">Female</label>
        <input type="radio" name="ugender" id="female" value="female">
           <label for="other">Other</label>
        <input type="radio" name="ugender" id="other" value="other">
     
			</p>
		
			
			<p>
				Enter Address:<input type="text" name="address">
			</p>
			<p>
			
				Enter city:	
       <select id="city"  name="ucity">
       <option value="Nagpur">Nagpur</option>
      <option value="Pune">Pune</option>
      <option value="Delhi">Delhi</option>
     <option value="Mumbai">Mumbai</option>
      <option value="Chandigrah">Chandigrah</option>
       <option value="Hydrabad">Hydrabad</option>
     </select>
     Enter State:	
       <select id="ustate"  name="ustate">
       <option value="Maharashtra">Maharashtra</option>
      <option value="UtterPardesh">UtterPardesh</option>
      <option value="MadhayPradesh">MadhayPradesh</option>
     <option value="Assam">Assam</option>
      <option value="Bihar">Bihar</option>
       <option value="Haryana">Haryana</option>
     </select>
			</p>
			
			<p>
				Enter email:<input type="email" name="uemail">
			</p>
			<p>
				Enter password:<input type="password" name="upassword">
			</p>
			
			<p>
				<input type="submit" value="insert" class="btn btn-primary">
			</p>
			
		</form>
		
		
</body>
</html>