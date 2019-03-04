package com.pack.dao;

import com.pack.model.Login;
import com.pack.model.Profile;

public interface AdminDao {
	public Profile verifyAdmin(Login lo);
}
