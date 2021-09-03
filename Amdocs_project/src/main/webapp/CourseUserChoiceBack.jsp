<%@ page import="java.sql.*"%>
<%
int eid = Integer.parseInt(request.getParameter("enrollid"));
int euserid = Integer.parseInt(request.getParameter("userid"));
String ucname = request.getParameter("name");
String courname = request.getParameter("enrollcourse");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
PreparedStatement stmt = conn.prepareStatement("insert into enroll(userid,name,courseid,coursename) values('" + euserid
		+ "','" + ucname + "','" + eid + "','" + courname + "')");
stmt.executeUpdate();
out.println("User enrolled " + euserid + " for course ID " + eid);
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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