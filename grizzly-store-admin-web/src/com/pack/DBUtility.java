package com.pack;
import org.apache.commons.dbcp.BasicDataSource;

public class DBUtility {
	/*public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","password1$");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}*/
	private static BasicDataSource datasource;
	static
	{
		try
		{
			datasource=new BasicDataSource();
			datasource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
			datasource.setUsername("system");
			datasource.setPassword("password1$");
			datasource.setUrl("jdbc:oracle:thin:@localhost:1521:XE");
			datasource.setMaxIdle(1000);
			datasource.setMinIdle(100);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	public static BasicDataSource getDataSource()
	{
		return datasource;
	}
	public static void setDataSource(BasicDataSource datasource)
	{
		DBUtility.datasource=datasource;
	}
	
	

}
