package com.dbasecon;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Databasecon 
{

	static Connection con;
	
	public static Connection getConnection()
	{
		
		try{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudstoragekey","root","root");
		}
		catch(ClassNotFoundException cnfe)
		{
			cnfe.printStackTrace();
		}
		catch(SQLException sqe)
		{
			sqe.printStackTrace();
		}
		
		return con;
	}
	
}

