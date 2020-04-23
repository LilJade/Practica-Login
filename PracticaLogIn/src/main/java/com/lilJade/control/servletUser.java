package com.lilJade.control;

import java.io.Console;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.lilJade.Dao.usuarioDao;
import com.lilJade.model.TbUsuariop;

/**
 * Servlet implementation class servletUser
 */
public class servletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String u = request.getParameter("usser");
		String p = request.getParameter("pass");

		TbUsuariop usser = new TbUsuariop();
		usuarioDao ud = new usuarioDao();
		
		usser.setUsuario(u);
		usser.setContrasenia(p);
		
		int access = ud.logInUser(usser).size();
		
		if(access == 1) {
			System.out.println("¡Inicio de Sesión Exitoso!");
		} else {
			System.out.println("¡Error!");
		}
		
		response.sendRedirect("index.jsp");
	}

}
