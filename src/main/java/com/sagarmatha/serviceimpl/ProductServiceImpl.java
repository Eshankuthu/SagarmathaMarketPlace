package com.sagarmatha.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagarmatha.domain.Product;
import com.sagarmatha.repository.ProductRepository;
import com.sagarmatha.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductRepository productRepository;

	@Override
	public void addProduct(Product product) {
		
		productRepository.save(product);

	}

	@Override
	public List<Product> viewProduct() {
		
		return productRepository.findAll();
	}

}
