

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection con = db.getConnection();
		
		String name = request.getParameter("aName");
		String pass = request.getParameter("pWord");
		
		try {
			PreparedStatement st = con.prepareStatement("select * from adminn where aName='"+name+"' and apass='"+pass+"'");
			ResultSet rs = ((java.sql.Statement)st).executeQuery("select * from adminn where aName='"+name+"' and apass='"+pass+"'");
			
			if(rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("aName",name);
				response.sendRedirect("AdminWelcome.jsp");
			}
			else {
				response.sendRedirect("invalid.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
