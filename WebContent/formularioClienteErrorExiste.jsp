<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>Rellena los siguientes campos para completar el registro:</p>

	<form action="registroCliente">

		<label for="email">Introduce un correo:</label> <br> 
		<input
			type="text" name="email" /> <br> <label for="password">Tu
			Establece tu contraseña</label> <br> <input type="text" name="password" />
		<br> <input type="submit" value="Registrarse">

	</form>
	
	<h3>El email introducido ya está registarado</h3>

</body>
</html>