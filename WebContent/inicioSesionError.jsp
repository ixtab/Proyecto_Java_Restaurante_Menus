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

		<label for="email">Tu correo electr�nico</label> <br> <input
			type="text" name="email" /> <br> <label for="password">Tu
			contrase�a</label> <br> 
			<input type="text" name="password" /> <br>
		<input type="submit" value="Iniciar sesi�n">

	</form>

<h3>No has introducido el email o la contrase�a</h3>
</body>
</html>