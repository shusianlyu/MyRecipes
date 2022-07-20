package dbmanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/Registration") //match the action of jsp file
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pass");
		
		RequestDispatcher dispatcher = null;
		
		//check if userID was taken here
			
		
		try {
			Connection con = jdbcmysql.initializeDatabase();
			PreparedStatement pst = con.prepareStatement("insert into Users (username, first_name, last_name, email, password) values (?,?,?,?,?)");
			pst.setString(1, username);
			pst.setString(2, first_name);
			pst.setString(3, last_name);
			pst.setString(4, email);
			pst.setString(5, pwd);
			
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request,response);
			
			pst.close();
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
