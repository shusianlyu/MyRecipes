package dbmanager;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
@WebServlet("/registration") //match the action of jsp file
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// encrypt Password 
	public static String encryptPassword(String input) { 
		try {
			// getInstance() method is called with algorithm SHA-512 
			MessageDigest md = MessageDigest.getInstance("SHA-512"); 
	  
	            // digest() method is called 
	            // to calculate message digest of the input string 
	            // returned as array of byte 
			byte[] messageDigest = md.digest(input.getBytes()); 
	  
	            // Convert byte array into signum representation 
			BigInteger no = new BigInteger(1, messageDigest); 
	  
	            // Convert message digest into hex value 
			String hashtext = no.toString(16); 
	  
	            // Add preceding 0s to make it 32 bit 
			while (hashtext.length() < 32) { 
				hashtext = "0" + hashtext; 
			} 
	  
	            // return the HashText 
			return hashtext; 
		} 
	  
	        // For specifying wrong message digest algorithms
		catch (NoSuchAlgorithmException e) {
			throw new RuntimeException(e); 
		} 
} 
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String encryptPwd = encryptPassword(request.getParameter("pass"));
		
		RequestDispatcher dispatcher = null;
		
		//check if userID was taken here
			
		
		try {
			Connection con = jdbcmysql.initializeDatabase();
			
			PreparedStatement pst1 = con.prepareStatement("select * from users where username=?");
			pst1.setString(1, username);
			dispatcher = request.getRequestDispatcher("registration.jsp");
			ResultSet rs1 = pst1.executeQuery();
			if (rs1.next()) {
				request.setAttribute("status", "failed");
			}
			else {
				PreparedStatement pst = con.prepareStatement("insert into users (username, first_name, last_name, email, password) values (?,?,?,?,?)");
				pst.setString(1, username);
				pst.setString(2, first_name);
				pst.setString(3, last_name);
				pst.setString(4, email);
				pst.setString(5, encryptPwd);
			
			
			
				int rowCount = pst.executeUpdate();
				
				//dispatcher = request.getRequestDispatcher("registration.jsp");
				if(rowCount > 0) {
					request.setAttribute("status", "success");
				} else {
					request.setAttribute("status", "failed");
				}
				pst.close();
			}
			
			dispatcher.forward(request,response);
			
			//pst.close();
			pst1.close();
			con.close();
			
			
			/*PreparedStatement pst = con.prepareStatement("insert into Users (username, first_name, last_name, email, password) values (?,?,?,?,?)");
			pst.setString(1, username);
			pst.setString(2, first_name);
			pst.setString(3, last_name);
			pst.setString(4, email);
			pst.setString(5, encryptPwd);
			
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request,response);
			
			pst.close();
			con.close();*/
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
