package com.sagarmatha.domain;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ADDRESS")
public class Address{
	

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int addressId;
	
	private String street;

	

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}
	
	

}
