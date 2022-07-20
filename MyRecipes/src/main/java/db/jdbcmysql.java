package db;

import java.sql.*;

public class jdbcmysql {
	public static void main(String[] Args) { 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		}
		catch (Exception E) {
			System.err.println("Unable to load driver."); 
			E.printStackTrace();
		}
			try {
			Connection C = DriverManager.getConnection( 
					"jdbc:mysql://localhost:3306/sonoo",
					"root", "MyFirstConnection"); //?user=root&password=xyz");
			Statement s = C.createStatement(); 
			String sql="select * from emp"; 
			s.executeQuery(sql);
			ResultSet res = s.getResultSet(); 
			if (res!=null) {
				while(res.next()) {
					System.out.println("\n"+res.getString(1)
					+ "\t"+res.getString(2));
				}
			}
			C.close();
			}
		catch (SQLException E) {
			System.out.println("SQLException:" + E.getMessage());
			System.out.println("SQLState:" + E.getSQLState()); 
			System.out.println("VendorError:" + E.getErrorCode());
		}
	}
}
