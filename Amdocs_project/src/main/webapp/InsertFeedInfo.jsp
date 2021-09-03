<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String fuserid = request.getParameter("userid1");
String fname = request.getParameter("name1");
String femail = request.getParameter("email1");
String feedback = request.getParameter("feed");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
Statement st=conn.createStatement();
int i = st.executeUpdate("insert into feedback(user_id, name, email, feedback) values ('"+ fuserid + "','" + fname + "','" + femail + "','" + feedback +"')");
out.println("Feedback submitted successfully<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<form method="post" action="Success.jsp">
		<input type="submit" value="Go back" />
	</form>
</body>
</html>
