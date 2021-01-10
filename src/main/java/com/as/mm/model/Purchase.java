package com.as.mm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="purchase")
public class Purchase {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="TransactionID")
	private int transactionid;
	@Column(name="employeeid")
	private int employeeid;
	@Column(name="productid")
	private int productid;
	@Column(name="purchasefrom")
	private int purchasefrom;
	@Column(name="purchasedate")
	private String purchasedate;
	@Column(name="qtypurchase")
	private int qtypurchase;
	@Column(name="remark")
	private String remark;
	public int getTransactionid() {
		return transactionid;
	}
	public void setTransactionid(int transactionid) {
		this.transactionid = transactionid;
	}
	public int getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public int getPurchasefrom() {
		return purchasefrom;
	}
	public void setPurchasefrom(int purchasefrom) {
		this.purchasefrom = purchasefrom;
	}
	public String getPurchasedate() {
		return purchasedate;
	}
	public void setPurchasedate(String purchasedate) {
		this.purchasedate = purchasedate;
	}
	public int getQtypurchase() {
		return qtypurchase;
	}
	public void setQtypurchase(int qtypurchase) {
		this.qtypurchase = qtypurchase;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
