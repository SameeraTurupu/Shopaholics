package com.shopaholics.beans;

public class UserSignupBean {
	String user;
	String password;
    String Lastname;
    String email;
    String address;
    String city;
    String state;
    String phone;
    int zipcode;
    public UserSignupBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserSignupBean(String user,  String lastname,
			String email,String password, String address, String city, String state,
			String phone, int zipcode) {
		super();
		this.user = user;
		this.password = password;
		this.Lastname = lastname;
		this.email = email;
		this.address = address;
		this.city = city;
		this.state = state;
		this.phone = phone;
		this.zipcode = zipcode;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLastname() {
		return Lastname;
	}
	public void setLastname(String lastname) {
		Lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	
}
