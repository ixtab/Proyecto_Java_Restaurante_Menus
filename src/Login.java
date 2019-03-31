
import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		
		RequestDispatcher rd;
		
		
		//conexion BBDD
				//Paso 1: Insertar Driver
				try {
					Class.forName("com.mysql.jdbc.Driver");
				} catch (ClassNotFoundException e) {
					System.out.println("No se ha encontrado el driver para MySQL");
					return;
				}
				System.out.println("Se ha cargado el Driver de MySQL");




				// Paso 2: Establecer conexión con la base de datos
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


				//Paso 3: Interactuar con la BD (todavía pendiente)
				String SSQL="SELECT * FROM cliente WHERE email='"+email+"' AND password='"+password+"'";
				Statement st;
				
				//si el email o la contraseña estan vacios  directamente te envia a la pagina de inicio de sesion con error
				if (email.equals("") || password.equals("")) {
					rd = req.getRequestDispatcher("/inicioSesionError.jsp");
				}
				
				//sila contraseña y el nombre tienen algo ya pasa a hacer la consulta en la BD
				try {
					st = con.createStatement();
					ResultSet rs = st.executeQuery(SSQL);
					if(rs.next()) {
						HttpSession sesion = req.getSession(true);
						rd = req.getRequestDispatcher("/p1.jsp");
						sesion.setAttribute("email", email);	
						}		
					else {
						rd = req.getRequestDispatcher("/denegado.jsp");
						//no hay que cerrar sesión porque nunca se ha iniciado
						//sesion.invalidate();
					}
					rd.forward(req, res); 
				
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
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
		
		
	}
	
	

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		// L�gica de la conexi�n con la base de datos.
		
		
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, res);
		
		
	}

}






