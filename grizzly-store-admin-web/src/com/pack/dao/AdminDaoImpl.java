package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.pack.DBUtility;
import com.pack.model.Login;
import com.pack.model.Profile;

public class AdminDaoImpl implements AdminDao {

	@Override
	public Profile verifyAdmin(Login lo) {
		// TODO Auto-generated method stub
		Connection con=null;
		PreparedStatement ps=null,ps1=null;
		try
		{
			/*con=DBUtility.getConnection();*/
			con=DBUtility.getDataSource().getConnection();
			con.setAutoCommit(false);
			ps=con.prepareStatement("select username,password,status from login");
			ResultSet rs=ps.executeQuery();
			rs.next();
			if(lo.getUsername().equals(rs.getString("username")) && lo.getPassword().equals(rs.getString("password")) && rs.getString("status").equals("Valid"))
			{
			
				ps1=con.prepareStatement("select id,name,designation,office from profile where id like ?");
				ps1.setString(1, lo.getUsername());
				ResultSet rs1=ps.executeQuery();
				rs1.next();
				Profile p=new Profile();
				p.setId(rs1.getString("id"));
				p.setName(rs1.getString("name"));
				p.setDesignation(rs1.getString("designation"));
				p.setOffice(rs1.getString("office"));
				return p; 
			}
			/*else
			{
				if(lo.getUsername()==rs.getString("username"))
				{
					return 2;
				}
				else if(lo.getPassword()==rs.getString("password"))
				{
					return 3;
				}
				else
					return 0;
					
			}*/
				
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			try
			{
				if(con!=null)
				{
					con.close();
					ps.close();
				}
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		return null;
	}

}
