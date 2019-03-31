<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El restaurante se ha resgistrado en la base de datos</title>
</head>
<body>


<%String nombre = request.getParameter("nombre"); 




	String direccion = request.getParameter("direccion");
		String codigoPostal = request.getParameter("codigoPostal");
		String tipoComida = request.getParameter("tipoComida");
		
		
	
		String comentariosMenu = request.getParameter("comentariosMenu");
		
		String tlf = request.getParameter("tlf");
		String sitioWeb = request.getParameter("sitioWeb");
		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		
		
		

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


//Paso 3: Interactuar con la BD (todavía pendiente)

try {
			Statement sentencia = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = sentencia.executeQuery("SELECT * FROM RESTAURANTE");
			boolean existe = rs.next();
			
			if (existe) {
				rs.moveToInsertRow(); 
				rs.updateString("NOMBRE", nombre); 
				rs.updateString("direccion",direccion ); ; 
				rs.updateString("codigoPostal", codigoPostal); 
				rs.updateString("tipoComida", tipoComida); 
				rs.updateString("comentariosMenu",comentariosMenu); 

				rs.updateString("tlf", tlf); 
				rs.updateString("sitioWeb", sitioWeb); 
				rs.updateString("usuario", usuario); 
				rs.updateString("password", password); 
				rs.insertRow(); 
				
				System.out.println("Cliente añadido");
				%>
				<h2>El restaurante <%=nombre %> se ha resgistrado</h2>
<%
			}
		} catch (SQLException e) {
			System.out.println("Error al añadir el nuevo cliente");
			System.out.println(e.getMessage());
			
			%>
			<h2>Ha habido un problema! El restaurante <%=nombre %> no se ha resgistrado</h2>
			<p>Vuelve a intentarlo </p>
<%
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