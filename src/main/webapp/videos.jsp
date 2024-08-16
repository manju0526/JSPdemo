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
	
	<!-- <video width="320" height="240" controls="controls">
            <source src="https://youtu.be/OuBUUkQfBYM" type="video/mp4" />
    </video> -->
	<iframe width="1263" height="480" src="https://www.youtube.com/embed/OuBUUkQfBYM" title="Servlet &amp; JSP Tutorial | Full Course" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
	
</body>
</html>