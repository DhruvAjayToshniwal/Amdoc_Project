<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Learning project</title>
</head>
<body>
	<form method="post" action="Login.jsp">
		<table border="5" width="45%" cellpadding="5">
			<thread>
			<tr>
				<th colspan="2">Sign in</th>
			</tr>
			</thread>
			<tbody>
				<tr>
					<td>User ID</td>
					<td><input type="number" name="userid" value="" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" value="" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
				<tr>
					<th colspan="2"><a href="Register.jsp">Create an account</a> <a
						href="Admin.jsp">Admin Login</a></th>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>