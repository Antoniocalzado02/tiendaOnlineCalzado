package com.miTienda.User;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity (name="USUARIO")

public class User {
	@Id
	@Column (name="USERNAME")
	private String userName;
	@Column (name="PASSWORDD")
	private String passWord;
	
	
	public User(String userName, String passWord) {
		super();
		this.userName = userName;
		this.passWord = passWord;
	}
	
	


	public User() {
		super();
		// TODO Auto-generated constructor stub
	}




	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassWord() {
		return passWord;
	}


	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}


	@Override
	public int hashCode() {
		return Objects.hash(userName);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(userName, other.userName);
	}


	@Override
	public String toString() {
		return "Users [userName=" + userName + ", passWord=" + passWord + "]";
	}
	
	
	

}
