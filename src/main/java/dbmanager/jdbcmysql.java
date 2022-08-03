package dbmanager;

import java.sql.*;

public class jdbcmysql {
	protected static Connection initializeDatabase() {
		Connection C = null;
		String dbDriver = "com.mysql.cj.jdbc.Driver";
		String dbURL = "jdbc:mysql://localhost:3306/";
		String dbName = "mydb";
		String dbUsername = "root";
		String dbPassword = "MyFirstConnection";
		try {
			Class.forName(dbDriver).newInstance();
		}
		catch (Exception E) {
			System.err.println("Unable to load driver."); 
			E.printStackTrace();
		}
		try {
			C = DriverManager.getConnection(
					dbURL + dbName,
					dbUsername, dbPassword); //?user=root&password=xyz");
			
		}
		catch (SQLException E) {
			System.out.println("SQLException:" + E.getMessage());
			System.out.println("SQLState:" + E.getSQLState()); 
			System.out.println("VendorError:" + E.getErrorCode());
		}
		return C;
	}
}
