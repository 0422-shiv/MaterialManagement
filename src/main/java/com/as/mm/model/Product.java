package com.as.mm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="productid")
	private int productid;
	
	@Column(name="employeeid")
	private int employeeid;
	
	@Column(name="productname")
	private String productname;
	
	@Column(name="productrate")
	private String productrate;
	
	@Column(name="productbatchno")
	private String productbatchno;
	
	@Column(name="productstock")
	private String productstock;
	
	@Column(name="picture")
	private String picture;
	
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public int getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductrate() {
		return productrate;
	}
	public void setProductrate(String productrate) {
		this.productrate = productrate;
	}
	public String getProductbatchno() {
		return productbatchno;
	}
	public void setProductbatchno(String productbatchno) {
		this.productbatchno = productbatchno;
	}
	public String getProductstock() {
		return productstock;
	}
	public void setProductstock(String productstock) {
		this.productstock = productstock;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
}
