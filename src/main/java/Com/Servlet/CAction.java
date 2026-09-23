package Com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Conn.Db_Conn;

/**
 * Servlet implementation class CAction
 */
@WebServlet("/CAction")
public class CAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CAction() {
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
		doGet(request, response);
		response.setContentType("text/hrml");
		String course = request.getParameter("course");
		String description = request.getParameter("description");
		String fees = request.getParameter("fees");
		String duration = request.getParameter("duration");
		String project = request.getParameter("project");
		PrintWriter out = response.getWriter();
		
		int i = 0;
		
		try 
		{
			Connection con = Db_Conn.getCon();
			String q = "insert into course(course, description, fees, duration, project)values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1, course);
			ps.setString(2, description);
			ps.setString(3, fees);
			ps.setString(4, duration);
			ps.setString(5, project);
			
			i = ps.executeUpdate();
			if(i > 0)
			{
				response.sendRedirect("admin/c.jsp");
			}
			else
			{
				out.print("<center><h2>Error</h2></center>");
				RequestDispatcher rd = request.getRequestDispatcher("admin/C.jsp");
				rd.include(request, response);
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
