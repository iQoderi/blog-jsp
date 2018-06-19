package org.seven.model;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
	private int id;
	
	private String name;
	
	private String password;
	
	private String age;
	
	private Date date;
	private String sexy;

	private int sex;

	public int getSex() {
		return sex;
	}

	public void setSexy(String sexy) {
		this.sexy = sexy;
	}

	public String getSexy() {
		return sexy;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setDate(String age) {
		this.date = date;
	}
}
