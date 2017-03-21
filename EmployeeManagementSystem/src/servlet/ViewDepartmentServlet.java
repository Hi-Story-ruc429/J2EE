package servlet;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DataAccess;

/**
 * Servlet implementation class ViewDepartmentServlet
 */
@WebServlet("/ViewDepartmentServlet")
public class ViewDepartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewDepartmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id")); 
		request.setAttribute("getDepartMent", DataAccess.getDepartMent(id));
		
		HttpSession session = request.getSession(true);
		
		if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
			response.sendRedirect("login.jsp");
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("viewDepartment.jsp");
	        rd.forward(request, response);
		}
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
