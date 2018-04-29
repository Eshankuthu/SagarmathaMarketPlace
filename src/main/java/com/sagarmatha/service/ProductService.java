package com.sagarmatha.service;

import org.springframework.stereotype.Service;

import com.sagarmatha.domain.Product;

@Service
public interface ProductService {
	
	public void addProduct(Product product);

}
