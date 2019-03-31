package probandoJSP;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LogicaBD {
	private String mensaje;
	private Connection con;

	
	//LogicaBD se encarga del Driver SQL y de establecer conexion con la base de datos
	
	public LogicaBD() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			mensaje="Se ha cargado el Driver de MySQL";
		} catch (ClassNotFoundException e) {
			mensaje="No ha podido cargar el driver\n"+e.getMessage();
			return;
		}
		System.out.println(mensaje);
		String cadenaConexion = "jdbc:mysql://localhost:3306/menu?serverTimezone=UTC";
		String user = "root";
		String pass = "keteDen2"; 

		try {
			con = DriverManager.getConnection(cadenaConexion, user, pass);
			mensaje="Conexi�n establecida a la BD Menu";
		} catch (SQLException e) {
			mensaje="No ha podido conectar a la BD\n"+e.getMessage();
		}
		
		System.out.println(mensaje);
	}
	
	
	@Override
	public String toString() {
		return "LogicaBD [mensaje=" + mensaje + "]";
	}
	

	public String tablaClientes() {
		Statement sentencia;
		String salida="<table>";
		try {
			sentencia = con.createStatement();
			ResultSet rs = sentencia.executeQuery("SELECT * FROM CLIENTE");
			while (rs.next()) {
				salida=salida+"<tr>";
				salida=salida+"<td>"+rs.getString("nombre")+"</td>";
				salida=salida+"<td>"+rs.getString("direccion")+"</td>";
				salida=salida+"<td>"+rs.getString("codigoPostal")+"</td>";
				salida=salida+"<td>"+rs.getString("tipoComida")+"</td>";
				salida=salida+"</tr>";
			}
			salida=salida+"</table>";
			this.mensaje = "Hemos obtenido la tabla de clientes";
			return salida;
		} catch (SQLException e) {
			this.mensaje = "No se ha podido cerrar la BD\n" + e.getMessage();
			return this.mensaje;
		}
	}
	
	public String tablaRestaurantes() {
		Statement sentencia;
		String salida="<table>";
		try {
			sentencia = con.createStatement();
			ResultSet rs = sentencia.executeQuery("SELECT * FROM RESTAURANTE");
			while (rs.next()) {
				salida=salida+"<tr>";
				salida=salida+"<td>"+rs.getString("ID")+"</td>";
				salida=salida+"<td>"+rs.getString("EMAIL")+"</td>";
				salida=salida+"</tr>";
			}
			salida=salida+"</table>";
			this.mensaje = "Hemos obtenido la tabla de clientes";
			return salida;
		} catch (SQLException e) {
			this.mensaje = "No se ha podido cerrar la BD\n" + e.getMessage();
			return this.mensaje;
		}
	}
	
	
	// aqui cerramos la base de datos despues de las consultas que hayamos hecho
	
	public void cerrarBD() {
		try {
			con.close();
			mensaje="Se ha cerrado la conexi�n con la BD";
		} catch (SQLException e) {
			mensaje="No se ha podido cerrar la BD\n"+e.getMessage();
			System.out.println(mensaje);
			return;
		}
		System.out.println(mensaje);
	}




		


		
}
