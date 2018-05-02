package com.sagarmatha.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sagarmatha.domain.Product;
import com.sagarmatha.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	// Homepage 

	@RequestMapping("/")
	public String getIndex() {
		return "index";
	}
	
	@RequestMapping("/products")
	public String showProductsPage() {
		return "products";
	}

	@RequestMapping("/shoppingcart")
	public String showShoppingCartPage() {
		return "shoppingcart";
	}
	
	@RequestMapping("/productdetail")
	public String showProductDetailPage() {
		return "productdetail";
	}
	
	@RequestMapping("/checkout")
	public String showCheckoutPage() {
		return "checkout";
	}
	
	@RequestMapping("/navigation")
	public String showNavigation() {
		return "nagivation";
	}

	// Vendor Add Products from Vendor Dashboard
	@RequestMapping(value="/vendor/addProduct", method = RequestMethod.POST)
	public String vendorAddProduct(@ModelAttribute("product") @Valid Product product, BindingResult result) {
		productService.addProduct(product);
		return "redirect:/vendor/dashboard";
		
	}



}
