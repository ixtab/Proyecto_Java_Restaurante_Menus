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
<title>Formulario Nuevo Cliente</title>
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


<div class="trans  container row" id="contenedor">
		<div class=" card-panel col s4 offset-s4 padding" id = "consulta">
<p>Rellena los siguientes campos para completar el registro:</p>
	<form action="registroCliente" class = "flow-text">

		<label for="email">Introduce un correo:</label> <br> 
		<input
			type="text" name="email" /> <br> <label for="password">Tu
			Establece tu contraseña</label> <br> <input type="text" name="password" />
		<br> <input type="submit" value="Registrarse" class=" margen-inferior waves-effect waves-light btn teal col s6 offset-s3 hoverable">

	</form>
	<br>
	<p>Falta el email o la contraseña</p>
	</div>
	</div>
	
	
<script type="text/javascript" src="materialize.min.js"></script>

</body>
</html>