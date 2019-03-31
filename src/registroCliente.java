
import probandoJSP.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class registroCliente
 */
@WebServlet("/registroCliente")
public class registroCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LogicaBD lbd;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registroCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		RequestDispatcher rd;
		
		//HttpSession sesion = request.getSession(true);
		
		if (email.equals("") || password.equals("")) {
			rd = request.getRequestDispatcher("/formularioClienteError.jsp");
		}
		 else {
		rd = request.getRequestDispatcher("/registroCliente.jsp");}
		rd.forward(request, response); 
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		// L�gica de la conexi�n con la base de datos.
		ServletContext contextoAplicacion = this.getServletContext();
		lbd= new LogicaBD();
		contextoAplicacion.setAttribute("miLogicaBD", lbd);
	}
	
	
	@Override
	public void destroy() {
		lbd.cerrarBD();
		super.destroy();
	}

}
