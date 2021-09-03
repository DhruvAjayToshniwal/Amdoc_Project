<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in
<br>
<a href="index.jsp"> Please login</a>
<%
} else {
%>
<h1>
	Welcome ID Number
	<%=session.getAttribute("userid")%></h1>
Please select any option
<br>
<a href="ViewUsers.jsp">View Users<br></a>
<a href="ViewCourses.jsp">View Courses<br></a>
<a href="ViewFeedback.jsp">View Feedback<br></a>
<a href="Courses.jsp"> Add Courses<br></a>
<a href="EnrollmentDetails.html"> View Enrollment Details<br></a>
<a href="DeleteSelect.html"> Delete entry<br></a>
<a href="Logout.jsp">Click here to logout</a>
<%
}
%>