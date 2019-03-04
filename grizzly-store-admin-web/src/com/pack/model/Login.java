package com.pack.model;

public class Login {
	private String username,password,status,usertype;

	public Login(String username, String password, String status, String usertype) {
		super();
		this.username = username;
		this.password = password;
		this.status = status;
		this.usertype = usertype;
	}

	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Login(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	
	

}
