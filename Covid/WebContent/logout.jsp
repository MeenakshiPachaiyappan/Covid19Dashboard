<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	session = request.getSession();
String email = "";
System.out.println(session.getAttribute("session_user"));
if (session.getAttribute("session_user") == null || session.getAttribute("session_user") == ""
		|| session.getAttribute("session_user").equals("")) {

	response.sendRedirect("login.jsp");
} else {
	email = session.getAttribute("session_user").toString();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout Page</title>
</head>
<body>
	<%
		request.getSession().invalidate();
	%>
	<h1>You have successfully logged out of the page.</h1>
	<a href="login.jsp">Go Back to Home Page</a>

</body>
</html>