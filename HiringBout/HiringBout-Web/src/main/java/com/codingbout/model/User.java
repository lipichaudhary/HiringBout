package com.codingbout.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
@SuppressWarnings("serial")
public class User {
	@Id
	@GeneratedValue
	@Column(name="id", length=11)
	private Long id;
	
	@Column(name="firstname")
	String name;
	
	@Column(name="lastname")
	String lastname;

	@Column(name="emailaddress")
	String emailaddress;
	
	@Column(name="age")
	String age;
	
	@Column(name="collegename")
	String collegename;
	
	@Column(name="contactnumber")
	String contactnumber;
	
	@Column(name="accusername")
	String accusername;
 
	@Column(name="accpassword")
	String accpassword;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmailaddress() {
		return emailaddress;
	}

	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getCollegename() {
		return collegename;
	}

	public void setCollegename(String collegename) {
		this.collegename = collegename;
	}

	public String getContactnumber() {
		return contactnumber;
	}

	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}

	public String getAccusername() {
		return accusername;
	}

	public void setAccusername(String accusername) {
		this.accusername = accusername;
	}

	public String getAccpassword() {
		return accpassword;
	}

	public void setAccpassword(String accpassword) {
		this.accpassword = accpassword;
	}



}
