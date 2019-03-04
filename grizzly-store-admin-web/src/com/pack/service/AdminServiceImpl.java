package com.pack.service;

import com.pack.dao.AdminDaoImpl;
import com.pack.model.Login;
import com.pack.model.Profile;

public class AdminServiceImpl implements AdminService {

	@Override
	public Profile verifyAdmin(Login lo) {
		// TODO Auto-generated method stub
		AdminDaoImpl a1=new AdminDaoImpl();
		Profile p=a1.verifyAdmin(lo);
		return p;
	}

}
