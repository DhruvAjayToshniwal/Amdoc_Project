<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
int del = Integer.parseInt(request.getParameter("delconid"));
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
Statement st = conn.createStatement();
PreparedStatement stmt = conn.prepareStatement("DELETE FROM contact WHERE contact_id='" + del + "'");
stmt.executeUpdate();
response.sendRedirect("AdminSuccess.jsp");
%>