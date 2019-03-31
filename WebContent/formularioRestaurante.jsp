<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="style.css" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <script type="text/javascript" src="script.js"></script>
<title>Formulario registro restaurantes</title>
</head>
<body>

<header class ="trans navbar-fixed">
			<nav>
			    <div class="teal darken-2 nav-wrapper">
			      <a href="http://localhost:8080/probandoJSP/"class="brand-logo"><i class="large material-icons flow-text">local_dining</i> Mi Menú del día <i class="large material-icons right">local_dining</i></a>
			      <ul id="nav-mobile" class="right hide-on-med-and-down">
			        <li><a href="inicioSesion.jsp">Iniciar sesión</a></li>
			        <li><a href="registro.jsp">Registrarse</a></li>
			      </ul>
			    </div>
			  </nav>
		</header>


<p>Rellena los siguientes campos para completar el registro:</p>

<div class="trans margen-superior container row" id="contenedor">
		<div class="margen-superior card-panel col s4 offset-s4 padding" id = "consulta">
		
<form action="registroRest" class = "flow-text">
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
	<input type ="submit" value="Registrar" class=" margen-inferior waves-effect waves-light btn teal col s6 offset-s3 hoverable"/>
	

</form>
</div>
		</div>
<script type="text/javascript" src="materialize.min.js"></script>

</body>
</html>