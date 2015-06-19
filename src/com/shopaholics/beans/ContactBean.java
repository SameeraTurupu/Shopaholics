package com.shopaholics.beans;

public class ContactBean {
	//int seller_id;
	String sellar_name;
	String password;
	String city;
	String company;
	String state;
	String phone;
	int zipcode;
	/*public int getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(int seller_id) {
		this.seller_id = seller_id;
	}*/
	public String getSellar_name() {
		return sellar_name;
	}
	public void setSellar_name(String sellar_name) {
		this.sellar_name = sellar_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
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
	public ContactBean(String sellar_name, String password, String company,
			String city, String state, String phone, int zipcode2) {
		super();
		//this.seller_id = seller_id;
		this.sellar_name = sellar_name;
		this.password = password;
		this.company = company;
		this.city = city;
		this.state = state;
		this.phone = phone;
		this.zipcode = zipcode2;
	}
	public ContactBean() {
		//this.seller_id = getSeller_id();
		this.sellar_name = getSellar_name();
		this.password = getPassword();
		this.city = getCity();
		this.state = getState();
		this.phone = getPhone();
		this.zipcode = getZipcode();
		this.company = getCompany();
	}
	
	
}