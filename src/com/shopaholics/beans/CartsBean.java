package com.shopaholics.beans;

public class CartsBean {
	int order_id;
	String pid;
	public CartsBean(String pid,String pname,  int order_id, int stock,
			int price) {
		super();
		this.order_id = order_id;
		this.pid = pid;
		this.pname = pname;
		this.stock = stock;
		this.price = price;
	}
	String pname;
	int stock;
	int price;
	public CartsBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
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
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
}
