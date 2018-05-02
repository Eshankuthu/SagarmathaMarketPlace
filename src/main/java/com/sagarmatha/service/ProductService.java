package com.sagarmatha.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sagarmatha.domain.Product;

@Service
public interface ProductService {
	
	public void addProduct(Product product);
	
	public List<Product> viewProduct();

}
