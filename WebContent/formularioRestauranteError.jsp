<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error en Formulario registro restaurantes</title>
</head>
<body>




<p>Rellena los siguientes campos para completar el registro:</p>
<form action="registroRest">
<label for="nombre">Nombre del restaurante:</label> 
		<input type="text" name="nombre" /><br> 
<label for="direccion">Dirección del restaurante:</label>  
		<input type="text" name="direccion" /><br>
<label for="codigoPostal">C.P:</label>  
		<input type="text" name="codigoPostal" /><br>
<label for="tipoComida">Tipo de comida del restaurante:</label>
	<input type="text" name="tipoComida" /> <br> 
<label for="comentariosMenu">comentarios sobre el menú:</label>
		<input type="text" name="comentariosMenu" /> <br> 
<label for="tlf">Telefono:</label>
		<input type="text" name="tlf" /> <br> 
<label for="sitioWeb">Página web:</label> 
		<input type="text" name="sitioWeb" /><br> 
<label for="usuario">Elige un nombre de usuario:</label> 
		<input type="text" name="usuario" /><br> 
<label for="password">Introduce una contraseña:</label> 
		<input type="text" name="password" /><br> 
	<input type ="submit" value="Registrar restaurante"/>
	
<h3>No has introducido el nombre del Restaurante</h3>		

</form>

</body>
</html>