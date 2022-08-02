package dbmanager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Donate_Recipes")
public class Donate_Recipes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String r_title = request.getParameter("title");
		String r_description = request.getParameter("description");
		
		HttpSession session = request.getSession();
		String author = (String) session.getAttribute("username");
		String type = request.getParameter("type");
		int serving_size = Integer.parseInt(request.getParameter("serving_size"));
		
		
		RequestDispatcher dispatcher = null;
		
		try {
			Connection con = jdbcmysql.initializeDatabase();
			PreparedStatement pst = con.prepareStatement("insert into Recipes (title, author, type, serving_size, description) values (?,?,?,?,?)");
			pst.setString(1, r_title);
			pst.setString(2, author);
			pst.setString(3, type);
			pst.setInt(4, serving_size);
			pst.setString(5, r_description);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("donate_recipes.jsp");
			
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("donate_recipes.jsp");
        view.forward(request, response);
	}


}

