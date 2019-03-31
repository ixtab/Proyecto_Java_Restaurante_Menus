<%@page import="probandoJSP.LogicaBD"%>
<%@page import="probandoJSP.*"%>

<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurantes disponibles</title>
</head>
<body>

<%
		String email=request.getParameter("email");


	HttpSession sesion = request.getSession(true);
	email = (String) sesion.getAttribute("email");
	ServletContext contextoAplicacion = this.getServletContext();
	
	%>

	<h1>Has iniciado sesion como <%= email %></h1>
	<%

	
	//LogicaBD logicaBD = (LogicaBD) contextoAplicacion.getAttribute("miLogicaBD");
	
 if (email==null) 
	{ %>
		<H2>No has iniciado sesión</H2>

	<% }
	else
	{ %>
		<h1>Usuario: <%= email%></h1>
		<p>	<a href="CerrarSesion">Cerrar sesión</a></p>
	<% } %>


<p>	<a href="Gestion?accion=Index">Atrás</a></p>
<p>	<a href="Gestion?accion=Restaurantes">Restaurantes</a></p>







<h1>Hemos llegado hasta restaurantes</h1>


	<form action="Rest"method="post">

		<label for="codigoPostal">Introduce el código postal:</label> <br>
		<input type="text" name="codigoPostal" /> <br> 
		<input type="submit" value="Buscar Restaurantes por codigo postal">

	</form>



</body>
</html>


