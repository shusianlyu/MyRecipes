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

@WebServlet("/Search_Recipes")
public class Search_Recipes extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Assumption is that input is correct, or that Javascript can be used to check for good input
		String r_title = request.getParameter("title");
		String r_author = request.getParameter("author");
		//TODO String r_ingredients = request.getParameter("ingredients");
		String r_type = request.getParameter("type");
		String r_method = request.getParameter("method");
		int r_serving_size = Integer.parseInt(request.getParameter("serving_size"));
		int display_num = Integer.parseInt(request.getParameter("display_num"));
		
		
		RequestDispatcher dispatcher = null;
		
		try {
			Connection con = jdbcmysql.initializeDatabase();
			PreparedStatement pst = con.prepareStatement("search * from Recipes where title like '%?%' and author like '%?%' and type like '%?%' and method like '%?%' and serving_size=? limit ?");
			pst.setString(1, r_title);
			pst.setString(2, r_author);
			pst.setString(3, r_type);
			pst.setString(4, r_method);
			pst.setInt(5, r_serving_size);
			pst.setInt(6, display_num);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("search_recipes.jsp");
			
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
		RequestDispatcher view = request.getRequestDispatcher("search_recipes.jsp");
        view.forward(request, response);
	}
}
