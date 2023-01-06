

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection con = db.getConnection();
		
		String name = request.getParameter("uName");
		String number = request.getParameter("pNumber");
		String email = request.getParameter("email");
		String vnumber = request.getParameter("cardNumber");
		String address= request.getParameter("address");
		String dob = request.getParameter("dob");
		
		try {
			PreparedStatement st = con.prepareStatement("insert into voters(uName,pNumber,email,vnumber,address,dob)values('"+name+"','"+number+"','"+email+"','"+vnumber+"','"+address+"','"+dob+"')");
			st.executeUpdate();
			response.sendRedirect("AdminWelcome.jsp");
		}catch(Exception e) {
			e.getStackTrace();
		}
	}

}
