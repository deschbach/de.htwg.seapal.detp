package de.htwg.Seapal.server;

import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.jdbc.Connection;

public class Database {

	private Connection conn = null;
	
	private String dbName = "seapal";
	private String dbUrl = "jdbc:mysql://localhost/";
	private String dbDriver = "com.mysql.jdbc.Driver";
	private String dbUser = "root";
	private String dbPassword = "root";
	
	public Connection getConnection() {
		
		try {
			
            Class.forName(this.dbDriver).newInstance();
            
            this.conn = (Connection) DriverManager.getConnection(this.dbUrl + this.dbName, this.dbUser, this.dbPassword);
            
		} catch (InstantiationException e) {
            e.printStackTrace();
		} catch (IllegalAccessException e) {
            e.printStackTrace();
		} catch (ClassNotFoundException e) {
            e.printStackTrace();
		}  catch (SQLException e) {
            e.printStackTrace();
		}
         
		return conn;
	}
	
}
