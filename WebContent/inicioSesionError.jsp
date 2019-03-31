<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iniciar sesion</title>
</head>
<body>

	<form action="Login"method="post">

		<label for="email">Tu correo electrónico</label> <br> <input
			type="text" name="email" /> <br> <label for="password">Tu
			contraseña</label> <br> 
			<input type="text" name="password" /> <br>
		<input type="submit" value="Iniciar sesión">

	</form>

<h3>No has introducido el email o la contraseña</h3>
</body>
</html>