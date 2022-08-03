package dbmanager;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dbmanager.Recipe;
import dbmanager.jdbcmysql;

//This servlet will controller the request from user
@WebServlet("/")
public class RecipeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private jdbcmysql jdbcmysql;
	
	public void init() {
		jdbcmysql = new jdbcmysql();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertRecipe(request, response);
				break;
			case "/delete":
				deleteRecipe(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateRecipe(request, response);
				break;
			default:
				listRecipe(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listRecipe(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Recipe> listRecipe = jdbcmysql.selectAllRecipes();
		request.setAttribute("listRecipe", listRecipe);
		RequestDispatcher dispatcher = request.getRequestDispatcher("recipeBook.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("donate_recipes.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Recipe existingRecipe = jdbcmysql.selectRecipe(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("donate_recipe.jsp");
		request.setAttribute("recipe", existingRecipe);
		dispatcher.forward(request, response);

	}

	private void insertRecipe(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String name = request.getParameter("name");
		String ingredients = request.getParameter("ingredients");
		String description = request.getParameter("description");
		String method = request.getParameter("method");
		String type = request.getParameter("type");
		String serveSize = request.getParameter("ServeSize");
		Recipe newRecipe = new Recipe(name, ingredients, description, method, type, serveSize);
		jdbcmysql.insertRecipe(newRecipe);
		response.sendRedirect("list");
	}

	private void updateRecipe(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String ingredients = request.getParameter("ingredients");
		String description = request.getParameter("description");
		String method = request.getParameter("method");
		String type = request.getParameter("type");
		String serveSize = request.getParameter("ServeSize");

		Recipe book = new Recipe(name, ingredients, description, method, type, serveSize);
		jdbcmysql.updateRecipe(book);
		response.sendRedirect("list");
	}

	private void deleteRecipe(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		jdbcmysql.deleteRecipe(id);
		response.sendRedirect("list");

	}

}