<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
int del = Integer.parseInt(request.getParameter("deluserid"));
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
PreparedStatement stmt1 = conn.prepareStatement("DELETE FROM contact WHERE user_id='" + del + "'");
stmt1.executeUpdate();
PreparedStatement stmt2 = conn.prepareStatement("DELETE FROM user1 WHERE user_id='" + del + "'");
stmt2.executeUpdate();
response.sendRedirect("AdminSuccess.jsp");
%>