<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Amdocs</title>
</head>
<body>
	<form method="post" action="AdminLogin.jsp">
		<table border="5" width="45%" cellpadding="5">
			<thread>
			<tr>
				<th colspan="2">Sign in</th>
			</tr>
			</thread>
			<tbody>
				<tr>
					<td>Admin ID</td>
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
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>