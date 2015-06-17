package com.shopaholics.beans;

public class ProductBean {
	String prod_id;
	String Prod_name;
	String description;
	int stock;
	int price;
	int offers;
	public ProductBean(String prod_id, String prod_name, String description,
			int stock, int price, int offers) {
		super();
		this.prod_id = prod_id;
		Prod_name = prod_name;
		this.description = description;
		this.stock = stock;
		this.price = price;
		this.offers = offers;
	}
	public ProductBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getProd_id() {
		return prod_id;
	}
	public void setProd_id(String prod_id) {
		this.prod_id = prod_id;
	}
	public String getProd_name() {
		return Prod_name;
	}
	public void setProd_name(String prod_name) {
		Prod_name = prod_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getOffers() {
		return offers;
	}
	public void setOffers(int offers) {
		this.offers = offers;
	}
	
}
