package com.sagarmatha.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sagarmatha.domain.Product;
import com.sagarmatha.domain.Vendor;
import com.sagarmatha.service.ProductService;
import com.sagarmatha.service.VendorService;

@Controller
public class VendorController {
	
	@Autowired
	VendorService vendorService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/vendor/signup")
	public String vendorSignup() {
		return "vendorRegistration";
	}
	
	@RequestMapping(value="/vendor/signup", method = RequestMethod.POST)
	public String addVendorSignup(@ModelAttribute("vendor") @Valid Vendor vendor, BindingResult result, ModelMap model) {
		
		if(result.hasErrors()) {
			return "redirect:vendor/signup";
		}
		
		vendorService.saveVendor(vendor);
		
		model.addAttribute("vendorId",vendor.getId());
		
		
		return "redirect:/vendor/dashboard";
		
	}
	
	@RequestMapping("/vendor/dashboard")
	public String vendorDashboard(ModelMap model) {
		
//		Long id  = (long) 7;
//		List<Vendor> vendor = vendorService.findVendorById((id));
//		
//		model.addAttribute(vendor);
		
		List<Product> products = productService.viewProduct();
		model.addAttribute("products",products);
		return "vendorDashboard";
	}

}
