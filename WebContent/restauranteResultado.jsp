<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado restaurantes por CP</title>
</head>
<body>

<%

String codigoPostal = request.getParameter("codigoPostal"); 
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
	System.out.println("No se ha encontrado el driver para MySQL");
	return;
}
System.out.println("Se ha cargado el Driver de MySQL");


// Paso 2: Establecer conexión con la base de datos
String cadenaConexion = "jdbc:mysql://localhost:3306/menu";
String user = "root";
String pass = "keteDen2"; 
Connection con;
try {
//DriverManager.getConnection(String url, String user, String password)

	con = DriverManager.getConnection(cadenaConexion, user, pass);
} catch (SQLException e) {
	System.out.println("Error en la conexión con la BD");
	System.out.println(e.getMessage());
	return;
}
System.out.println("Se ha establecido la conexión con la Base de datos");

%> 
<h1>Restaurantes en ese codigo postal:</h1>
<%
//Paso 3: Interactuar con la BD (todavía pendiente)

 






try {
	
	String consulta = "select * from restaurante where codigoPostal = ? ";
	PreparedStatement ps = con.prepareStatement(consulta);
	ps.setString(1, codigoPostal);
	ResultSet rs = ps.executeQuery();
	
	while (rs.next()) {
		String nombre = rs.getString("nombre");
		%>
		<h1><%= nombre %></h1>
		
	<% 
		
		System.out.print("-");
		System.out.println(); // Retorno de carro
	}
} catch (SQLException e) {
	System.out.println("Error al realizar el listado de productos");
	System.out.println(e.getMessage());
}






// Paso 4: Cerrar la conexión
try {
	con.close();
} catch (SQLException e) {
	System.out.println("No se ha podido cerrar la conexión con la BD");
	System.out.println(e.getMessage());
	return;
}
System.out.println("Se ha cerrado la base de datos");

%>


</body>
</html>