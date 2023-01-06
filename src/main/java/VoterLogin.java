

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection con = db.getConnection();
		
		String vnumber = request.getParameter("VoterNumber");
		
		try {
			PreparedStatement st1 = con.prepareStatement("select vNumber from temp_vc_number where vNumber = '"+vnumber+"'");
			ResultSet rs1 = st1.executeQuery("select vNumber from temp_vc_number where vNumber = '"+vnumber+"'");
			
			if(rs1.next()) {
				response.sendRedirect("votercheck.jsp");
			}
			else {
				PreparedStatement st = con.prepareStatement("select * from voters where vnumber='"+vnumber+"'");
				ResultSet rs = ((java.sql.Statement)st).executeQuery("select * from voters where vnumber='"+vnumber+"'");
				
				if(rs.next()) {
					response.sendRedirect("VoterWelcome.jsp");
				}
				else {
					//System.out.println("Wrong Credentials");
					response.sendRedirect("invalid.jsp");
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
