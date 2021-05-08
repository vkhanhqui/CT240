package com.chatapp.models;

public class User {
	private String username;
	private String password;
	private boolean gender;
	private String avatar;

	public User() {

	}

	public User(String username, boolean gender, String avatar) {
		super();
		this.username = username;
		this.gender = gender;
		this.avatar = avatar;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
