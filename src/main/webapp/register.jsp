<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
width: 100%;
padding: 12px 20px;
margin: 8px 0;
display: inline-block;
border: 1px solid #ccc;
box-sizing: border-box;
}

button {
background-color: #04AA6D;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 100%;
}

button:hover {
opacity: 0.8;
}

.cancelbutton {
width: auto;
padding: 10px 18px;
background-color: #f44336;
}

.container {
padding: 16px;
}

span.psw {
float: right;
padding-top: 16px;
}
.seldiv {
background: #04AA6D;
height: 50px;
width:200px;
border-radius: 15px;
padding:20px;
font-size:22px;
color:#fff;
}

.optiondiv {
background: #04AA6D;
height: 120px;
width:400px;
border-radius: 15px;
padding:20px;
font-size:15px;
color:#fff;
}

@media screen and (max-width: 300px) {
span.psw {
	display: block;
	float: none;
}
.cancelbutton {
	width: 100%;
}
}
</style>

<script type="text/javascript">
function ValidateEmail(emailId)
{
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(emailID.value.match(mailformat))
	{
		return true;
	}
	else
	{
		alert("You have entered an invalid email address!");
		document.getElementById('yourEmailID').focus();
		return false;
	}
}
</script>
</head>

<body>
	<form action="registerServlet" method="post" >
<div class="container">
	<label for="username"><b>Email</b></label><br>
	<input type="text" placeholder="Please enter your email" name="yourEmailID" id = "yourEmailID" required><br>
	<label for="user"><b>User Name</b></label>
	<input type="text" placeholder="Please enter your username" name="userName" id = "userName" required>

	<label for="password"><b>Password</b></label>
	<input type="password" placeholder="Please enter Password" name="yourPassword" id="yourPassword" required>
<div class="seldiv">
	<label>Gender: </label>
	<select name = "gender" id="gender">
		<option value="male">MALE</option>
		<option value="female">FEMALE</option>
	</select>
</div>
<br>
<div class="optiondiv">

<p>Please select your favorite language:</p>

	<input type="radio" id="java" name="favoriteLanguage" value="JAVA">
	<label for="java">JAVA</label><br>
	<input type="radio" id="python" name="favoriteLanguage" value="PYTHON">
	<label for="python">PYTHON</label><br>
	<input type="radio" id="ruby" name="favoriteLanguage" value="RUBY">
	<label for="ruby">RUBY</label>
</div>
	<button type="submit">Register</button>
	<label>
	<input type="checkbox" checked="checked" name="rememberme"> Remember me
	</label>
</div>
</form>
</body>
</html>
