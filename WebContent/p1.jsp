<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tu perfil</title>
</head>
<body>


	<%
		String email=request.getParameter("email");
	%>
	
<h1>Bienvenid@ a tu perfil <%= email %></h1>
	<p>sesión: <%= session.getId()%></p>
	
	<%!
		int contador=0;
	%>
	
	<% contador++; %> 
		 
	 	<% if (contador==1) 
	{ %>
		<H2>Has iniciado sesión</H2>
		
	<% }
	else
	{ %>
		<H2>Ya habías iniciado sesión</H2>
		
	<% } %>
	
	<p>Hola <%= email %> </p>
	<h2>Yelli, Yelli</h2>
	
	
	
	<p>	<a href="CerrarSesion">Cerrar sesión</a></p>
<h1>Usuario: <%= email%></h1>

<p>	<a href="Gestion?accion=p1"></a></p>
<p>	<a href="restaurantes.jsp">Restaurantes</a></p>
<p>	<a href="Gestion?accion="></a></p>
<p>	<a href="Gestion?accion="></a></p>

</body>
</html>