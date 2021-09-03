<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String useri = request.getParameter("user_id");
String na = request.getParameter("name");
String passw = request.getParameter("password");
String em = request.getParameter("email");
String phn = request.getParameter("phone_no");
String regda = request.getParameter("reg_date");
String add = request.getParameter("address");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/amdocs_project", "root", "Agbdlcid7!");
Statement st=conn.createStatement();
int i = st.executeUpdate("insert into user1(user_id, name, phone_no, email, address, password) values ('"+ useri+ "','" + na + "','" + phn + "','" + em + "','" + add + "','" + passw +"')");
if(i > 0){
//session.setAttribute("username", user_id);
	response.sendRedirect("Welcome.jsp");
}
else{
	response.sendRedirect("index.jsp");
}
%>