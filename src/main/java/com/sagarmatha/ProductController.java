package com.sagarmatha;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
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

}
