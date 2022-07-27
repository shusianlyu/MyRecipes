package dbmanager;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String encryptPwd = Registration.encryptPassword(request.getParameter("password"));
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Connection con = jdbcmysql.initializeDatabase();
			PreparedStatement pst = con.prepareStatement("select * from users where username=? and password=?");
			pst.setString(1, username);
			pst.setString(2, encryptPwd);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("username",rs.getString("username"));
				dispatcher = request.getRequestDispatcher("app.jsp");
			} else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			
			dispatcher.forward(request,response);
			
			pst.close();
			con.close();	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("login.jsp");
        view.forward(request, response);
	}


}
