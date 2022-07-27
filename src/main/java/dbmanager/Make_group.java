package dbmanager;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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

@WebServlet("/make_group") //match the action of jsp file
public class Make_group extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String group_name = request.getParameter("group_name");
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		
		RequestDispatcher dispatcher = null;
		
		try {
			Connection con = jdbcmysql.initializeDatabase();
			PreparedStatement pst = con.prepareStatement("select * from `groups` where group_name=?");
			pst.setString(1, group_name);
			
			ResultSet rs = pst.executeQuery();
			dispatcher = request.getRequestDispatcher("groupless.jsp");
			if(rs.next()) {
				request.setAttribute("status", "failed");
			} else {
				PreparedStatement pst2 = con.prepareStatement("insert into `Groups` (`group_name`) values (?)");
				pst2.setString(1, group_name);
				pst2.executeUpdate();
				PreparedStatement pst3 = con.prepareStatement("insert into group_membership (group_name, username) values (?, ?)");
				pst3.setString(1, group_name);
				pst3.setString(2, username);
				pst3.executeUpdate();
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
		RequestDispatcher view = request.getRequestDispatcher("registration.jsp");
        view.forward(request, response);
	}

}
