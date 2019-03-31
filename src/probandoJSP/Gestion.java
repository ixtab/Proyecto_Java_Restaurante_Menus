package probandoJSP;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Gestion
 */
@WebServlet("/Gestion")
public class Gestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		//String password = request.getParameter("password");
		
		
		HttpSession sesion = request.getSession(true);

		String accion = request.getParameter("accion");
		if (sesion.isNew() || accion==null) {
			response.sendRedirect("Login");
		} 
		else {
			RequestDispatcher rd=null;
			switch (accion) {
				case "Restaurantes": 
					rd = request.getRequestDispatcher("/restaurantes.jsp");
					
					break;
				case "Index": 
					rd = request.getRequestDispatcher("/index.jsp");
					break;
				case "Inicio": 
					rd = request.getRequestDispatcher("/inicioSesion.jsp");
					break;
				case "p1":
					rd = request.getRequestDispatcher("/p1.jsp");
					//String email = request.getParameter("email");
					break;
			}
			
			rd.forward(request, response);
		
		
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
