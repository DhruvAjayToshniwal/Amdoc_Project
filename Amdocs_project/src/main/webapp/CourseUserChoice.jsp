<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Enrollment</title>
</head>
<body>
	<form method="post" action="CourseUserChoiceBack.jsp">
		Please enter Course ID <input type="number" name="enrollid" /><br>
		<br> Please enter Course Name <input type="text"
			name="enrollcourse" /><br> <br> Please enter your User ID<input
			type="text" name="userid" /><br> <br> Please enter your
		Name<input type="text" name="name" /><br> <br> <input
			type="submit" value="Enroll" />
	</form>
</body>
</html>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
Statement st = conn.createStatement();
ResultSet rs = null;
rs = st.executeQuery("select * from course");
out.println("<html><body><h2>Courses</h2>");
out.println("<hr></br><table cellspacing='0' cellpadding='5' border='1'>");
out.println("<tr>");
out.println("<td><b>Course ID </b></td>");
out.println("<td><b>Course Name</b></td>");
out.println("<td><b>Course Description</b></td>");
out.println("<td><b>Course Fee</b></td>");
out.println("<td><b>Course Resource</b></td>");
out.println("</tr>");
while (rs.next()) {
	out.println("<tr>");
	out.println("<td>" + rs.getString(1) + "</td>");
	out.println("<td>" + rs.getString(2) + "</td>");
	out.println("<td>" + rs.getString(3) + "</td>");
	out.println("<td>" + rs.getString(4) + "</td>");
	out.println("<td>" + rs.getString(5) + "</td>");
	out.println("</tr>");
}
out.println("</table></br><hr></body></html>");
%>