

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;

public class Vote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection con = db.getConnection();
		
		String vnumber = request.getParameter("VoterNumber");
		String partie = request.getParameter("partie");
		
		try {
			PreparedStatement st1 = con.prepareStatement("insert into temp_vc_number(vNumber)values('"+vnumber+"')");
			PreparedStatement st2 = con.prepareStatement("insert into vote(vNumber,partie)values('"+vnumber+"','"+partie+"')");
			
			st1.executeUpdate();
			st2.executeUpdate();
			
			response.sendRedirect("index.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
