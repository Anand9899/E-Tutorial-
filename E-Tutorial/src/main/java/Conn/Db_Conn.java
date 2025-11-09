package Conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Db_Conn {
	public static final String Driver = "com.mysql.jdbc.Driver";
	public static Connection con;
	public static final String url = "jdbc:mysql://localhost:3306/";
	public static final String username = "root";
	public static final String password = "anand@123";
	public static final String database = "employees";
	
	public static Connection getCon() 
	{
		try 
		{
			Class.forName(Driver);
			con = DriverManager.getConnection(url+database,username,password);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return null;
		}
		
		return con;
	}
}
