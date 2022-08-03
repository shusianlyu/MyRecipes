package dbmanager;

import java.util.List;
import java.sql.*;
import java.util.ArrayList;

import dbmanager.Recipe;

//this class provides database for table recipe

public class jdbcmysql {
	private String jdbcURL = "jdbc:mysql://localhost:3306/userdb?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "rootpasswordgiven";

	private static final String INSERT_RECIPE_SQL = "INSERT INTO recipe" + "  (name, ingredients, description, method, type, serveSize) VALUES "
			+ " (?, ?, ?);";

	private static final String SELECT_RECIPE_BY_ID = "select id,ingredients,description,method,type,serveSize from recipe where id =?";
	private static final String SELECT_ALL_RECIPE = "select * from recipe";
	private static final String DELETE_RECIPE_SQL = "delete from recipe where id = ?;";
	private static final String UPDATE_RECIPE_SQL = "update recipe set name = ?,ingredients = ?, description =?,method = ?,type = ?,serveSize = ? where id = ?;";

	public jdbcmysql() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}

	public void insertRecipe(Recipe recipe) throws SQLException {
		System.out.println(INSERT_RECIPE_SQL);
		
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_RECIPE_SQL)) {
			preparedStatement.setString(1, recipe.getName());
			preparedStatement.setString(2, recipe.getIngredients());
			preparedStatement.setString(3, recipe.getDescription());
			preparedStatement.setString(4, recipe.getMethod());
			preparedStatement.setString(5, recipe.getType());
			preparedStatement.setString(6, recipe.getServeSize());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Recipe selectRecipe(int id) {
		Recipe recipe = null;
		
		try (Connection connection = getConnection();
				
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_RECIPE_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				String name = rs.getString("name");
				String ingredients = rs.getString("ingredients");
				String description = rs.getString("description");
				String method = rs.getString("method");
				String type = rs.getString("type");
				String serveSize = rs.getString("ServeSize");
				recipe = new Recipe(id,name,ingredients,description,method,type,serveSize);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return recipe;
	}

	public List<Recipe> selectAllRecipes() {

		List<Recipe> recipe = new ArrayList<>();
		try (Connection connection = getConnection();

			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_RECIPE);) {
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String ingredients = rs.getString("ingredients");
				String description = rs.getString("description");
				String method = rs.getString("method");
				String type = rs.getString("type");
				String serveSize = rs.getString("ServeSize");
				recipe.add(new Recipe(id, name, ingredients,description,method,type,serveSize));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return recipe;
	}

	public boolean deleteRecipe(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_RECIPE_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateRecipe(Recipe recipe) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_RECIPE_SQL);) {
			System.out.println("updated Recipe:"+statement);
			statement.setString(1, recipe.getName());
			statement.setString(2, recipe.getIngredients());
			statement.setString(3, recipe.getDescription());
			statement.setString(4, recipe.getMethod());
			statement.setString(5, recipe.getType());
			statement.setString(6, recipe.getServeSize());
			statement.setInt(7, recipe.getId());

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}