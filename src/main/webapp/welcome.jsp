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
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");	
	
		if (session.getAttribute("username")==null && session.getAttribute("password")==null )
		{
			response.sendRedirect("login.jsp");
		}
	%>

	WELCOME ${username}
	
	<a href="videos.jsp">click here for videos</a>	<br>
	
	
	
	<form action="Logout">
	Logout :	<input type="submit">
	</form>

</body>
</html>