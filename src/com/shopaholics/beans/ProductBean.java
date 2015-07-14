package com.shopaholics.beans;

public class ProductBean {
	String pid;
	int stock;
	int price;
	String pname;
	String description;
	String sid;
	String image;
	public String getImage() {
		return image.substring(62); // changed from 89 
	}
	public void setImage(String image) {
		this.image = image;
	}
	int offers;
	public ProductBean(String pid, String pname, String description,
			int stock, int price, int offers,String image) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.description = description;
		this.stock = stock;
		this.price = price;
		this.offers = offers;
		this.image=image;
	}
	public String getProd_id() {
		return pid;
	}
	public void setProd_id(String pid) {
		this.pid = pid;
	}
	public String getProd_name() {
		return pname;
	}
	public void setProd_name(String pname) {
		this.pname = pname;
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
