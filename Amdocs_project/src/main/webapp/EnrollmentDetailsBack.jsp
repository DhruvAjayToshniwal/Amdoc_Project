<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
int ecid = Integer.parseInt(request.getParameter("encid"));
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
Statement st = conn.createStatement();
ResultSet rs = null;
rs = st.executeQuery("select * from enroll where courseid='" + ecid + "'");
out.println("<html><body><h2>Courses</h2>");
out.println("<hr></br><table cellspacing='0' cellpadding='5' border='1'>");
out.println("<tr>");
out.println("<td><b>User ID </b></td>");
out.println("<td><b>Name</b></td>");
out.println("<td><b>Course ID</b></td>");
out.println("<td><b>Course Name</b></td>");
out.println("</tr>");
while (rs.next()) {
	out.println("<tr>");
	out.println("<td>" + rs.getString(1) + "</td>");
	out.println("<td>" + rs.getString(2) + "</td>");
	out.println("<td>" + rs.getString(3) + "</td>");
	out.println("<td>" + rs.getString(4) + "</td>");
	out.println("</tr>");
}
out.println("</table></br><hr></body></html>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<form method="post" action="AdminSuccess.jsp">
		<input type="submit" value="Go back" />
	</form>
</body>
</html>