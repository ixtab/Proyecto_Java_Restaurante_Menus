<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="style.css" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <script type="text/javascript" src="script.js"></script>
<title>Iniciar sesion</title>
</head>
<body>

<header class ="trans navbar-fixed">
			<nav>
			    <div class="teal darken-2 nav-wrapper">
			      <a href="http://localhost:8080/probandoJSP/" class="brand-logo"><i class="large material-icons flow-text">local_dining</i> Mi Menú del día <i class="large material-icons right">local_dining</i></a>
			      <ul id="nav-mobile" class="right hide-on-med-and-down">
			        <li><a href="inicioSesion.jsp">Iniciar sesión</a></li>
			        <li><a href="registro.jsp">Registrarse</a></li>
			      </ul>
			    </div>
			  </nav>
		</header>
		
		
		<div class="trans margen-superior container row" id="contenedor">
		<div class="margen-superior card-panel col s4 offset-s4 padding" id = "consulta">
			<form action="Login"method="post" class = "flow-text">
			<label for="email">Tu correo electrónico</label> <br> <input
			type="text" name="email" /> <br> <label for="password">Tu
			contraseña</label> <br> 
			<input type="text" name="password" /> <br>
			
			<input class=" margen-inferior waves-effect waves-light btn teal col s6 offset-s3 hoverable" type="submit" value="Iniciar sesión">
				
			</form>
		</div>
		</div>
		
<script type="text/javascript" src="materialize.min.js"></script>

</body>
</html>