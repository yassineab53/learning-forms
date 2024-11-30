<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
</head>
<body>
<%
	String gender = (String)session.getAttribute("gender");
	String genderTitle = null;

	if (gender != null && gender.equalsIgnoreCase("female")) {
		genderTitle = "Ms/Mrs.";
	} else {
		genderTitle = "Mr.";
	}
	%>
Welcome <%= genderTitle %> <%=session.getAttribute("emailId") %>
<br>
Your Resume has been added under <%= session.getAttribute("favoriteLanguage") %> POOL
</body>
</html>
