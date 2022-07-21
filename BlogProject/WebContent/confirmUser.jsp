<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>confirmUser.jsp</title>
</head>
<body>

	<%
	
		String admin_Email = "ayush125@gmail.com";
		String admin_Password = "ram215";
		
		String email=request.getParameter("email");
		String password= request.getParameter("password");
		
		if(admin_Email.equals(email) && admin_Password.equals(password))
		{
			response.sendRedirect("PathChoice.jsp");
		}
		else
		{
			session.setAttribute("error","Your Email And Password Does Not Match..");
			response.sendRedirect("SignIn.jsp");
			
		}	
	
	%>


</body>
</html>