package databasePackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class databaseLink {
	private Connection con;
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/runner";
	private String user = "linlifan";
	private String password = "linlifan";
	
	public databaseLink(){}
	public Connection getConnection(){
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
}
