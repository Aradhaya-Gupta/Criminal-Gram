<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
</head>
<body>
	<center>
		<h1>Upload Pic</h1>
		<form method="post" action="uploadServelet1.jsp" enctype="multipart/form-data">
			<table border="0">
				
				<tr>
					<td> Photo: </td>
					<td><input type="file" name="photo" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="Save">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>