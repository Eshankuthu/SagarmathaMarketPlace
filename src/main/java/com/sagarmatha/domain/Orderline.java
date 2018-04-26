package com.sagarmatha.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Orderline {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int orderlineId;
	
	private int quantity;
	
	@OneToOne
	private Product product;
	


	public int getOrderlineId() {
		return orderlineId;
	}

	public void setOrderlineId(int orderlineId) {
		this.orderlineId = orderlineId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}



}
