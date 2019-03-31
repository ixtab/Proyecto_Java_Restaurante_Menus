<%@page import="java.sql.*"%><%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado registro de cliente:</title>
</head>
<body>



<%
String email = request.getParameter("email"); 

String password = request.getParameter("password");
		


//Paso 1: Insertar Driver
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
System.out.println("No se ha encontrado el driver para MySQL");
return;
}
System.out.println("Se ha cargado el Driver de MySQL");




//Paso 2: Establecer conexión con la base de datos
String cadenaConexion = "jdbc:mysql://jcctek.com:3306/MIMENU";
				String user = "admin1";
				String pass = "cursojavaFT"; 
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


//Paso 3: Interactuar con la BD 


    String SSQL="SELECT * FROM CLIENTE WHERE email='"+email+"'" ;
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(SSQL);


if(rs.next()){
	
	%>
	<h2>
		El cliente
		<%=email %>
		ya estaba resgistrado.
	</h2>
	<h3><a href="formularioCliente.jsp">
		Volver al formulario de registro</a>
	</h3>
	
	<%
	
} else {


try {
			Statement sentencia = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = sentencia.executeQuery("SELECT * FROM CLIENTE");
			boolean existe = rs.next();
			
			if (existe) {
				rs.moveToInsertRow(); 
				rs.updateString("email", email); 
				rs.updateString("password", password); 
				rs.insertRow(); 
				
				System.out.println("Cliente añadido");
				%>
	<h2>
		El cliente
		<%=email %>
		se ha resgistrado
	</h2>
	
	<h3>	<a href="Gestion?accion=Inicio">Iniciar sesion</a></h3>
	<h3>	<a href="Gestion?accion=Restaurantes">Buscar Restaurantes</a></h3>

	<%
			}
		} catch (SQLException e) {
			System.out.println("Error al añadir el nuevo cliente");
			System.out.println(e.getMessage());
		}


}







//Paso 4: Cerrar la conexión
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
