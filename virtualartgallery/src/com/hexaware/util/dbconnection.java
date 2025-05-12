package com.hexaware.util;

import java.sql.Connection;
import java.sql.DriverManager;
 
public class dbconnection {
 
	
	public static Connection connection = null;
 
	public dbconnection() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public static Connection getConnection()
	{
		//singleton design pattern
		if (connection == null)
		{
			try
			{
				
				
				connection = DriverManager.getConnection(
													PropertyUtil.get("db.url"),
													PropertyUtil.get("db.username"),
													PropertyUtil.get("db.password")
						);
				
			}
		catch(Exception  e)
		{
			e.printStackTrace();
		}
		}
		return connection;
	}
	
}

