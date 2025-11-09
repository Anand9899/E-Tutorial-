package Com.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Conn.Db_Conn;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAction() {
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

		response.setContentType("text/html");
		String email= request.getParameter("email");
		String password=request.getParameter("password");
		if("admin@gmail.com".equals(email) && "admin".equals(password)){
			HttpSession session = request.getSession();
			session.setAttribute("email",email);
			response.sendRedirect("admin/AdminHome.jsp");
			}
			
		else{
			int z=0;
			try{
				Connection con = Db_Conn.getCon();
				PreparedStatement ps=con.prepareStatement("select * from signup where email = ? and password = ?");
				ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs= ps.executeQuery();
				while(rs.next()){
					z=1;
					HttpSession session = request.getSession();
					session.setAttribute("email", email);
					response.sendRedirect("Student/StudentHome.jsp");	
				}
				if(z==0){
					response.sendRedirect("Login.jsp?msg=notexists");
				}
				
			}
			catch(Exception e){
				e.printStackTrace();
				response.sendRedirect("Login.jsp?msg=invalid");
			}
		}
	}

}
