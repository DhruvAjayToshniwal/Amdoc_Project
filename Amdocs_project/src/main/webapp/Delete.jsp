<%@ page import="java.sql.*"%>
<%
if (request.getParameter("Delete").equals("User"))
	response.sendRedirect("DeleteUser.html");
if (request.getParameter("Delete").equals("Feedback"))
	response.sendRedirect("DeleteFeed.jsp");
if (request.getParameter("Delete").equals("Contact"))
	response.sendRedirect("DeleteContact.jsp");
if (request.getParameter("Delete").equals("Course"))
	response.sendRedirect("DeleteCourse.jsp");
%>