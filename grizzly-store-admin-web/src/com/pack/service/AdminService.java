package com.pack.service;

import com.pack.model.Login;
import com.pack.model.Profile;

public interface AdminService {
	public Profile verifyAdmin(Login lo);
}
