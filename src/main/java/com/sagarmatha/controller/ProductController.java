package com.sagarmatha.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@RequestMapping("/")
	public String getIndex() {
		System.out.println("########Called.......");
		return "login";
	}

}
