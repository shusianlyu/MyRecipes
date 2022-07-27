package dbmanager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/groups")
public class Groups extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		RequestDispatcher dispatcher = null;
		try {
			Connection con = jdbcmysql.initializeDatabase();
			PreparedStatement pst = con.prepareStatement("select * from group_membership where username = ?");
			pst.setString(1, username);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				dispatcher = request.getRequestDispatcher("group.jsp");
			}else {
				dispatcher = request.getRequestDispatcher("groupless.jsp");
			}
			
			dispatcher.forward(request, response);
			pst.close();
			con.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
        
	}


}
