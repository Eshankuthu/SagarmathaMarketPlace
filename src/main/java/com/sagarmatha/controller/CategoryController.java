package com.sagarmatha.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sagarmatha.domain.Category;
import com.sagarmatha.service.CategoryService;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/admin/addProductCategory")
	public String getProductCategory() {
		return "addCategory";
	}
	
	@RequestMapping(value="/admin/addProductCategory", method=RequestMethod.POST)
	public String addProductCategory(@ModelAttribute("category") @Valid Category category, BindingResult result) {
		
		if(result.hasErrors()) {
			return "categoryList";
		}
		
	
		categoryService.addCategory(category);
		System.out.println("CALLED CATEGORY CONTROLLER........" + category.getCategoryName());
		return "redirect:/admin/addProductCategory";
	}
	
	public String navigationCategory(Model model, String returnPage) {
		model.addAttribute("categories", categoryService.findAllCategory());
		return returnPage;
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String getAllProductCategory(Model model) {
		return navigationCategory(model,"index");	
	}
	
	@RequestMapping(value="/shoppingcart", method=RequestMethod.GET)
	public String getAllProductCategoryInCart(Model model) {
		return navigationCategory(model,"shoppingcart");
	}
	
	@RequestMapping(value="/checkout", method=RequestMethod.GET)
	public String getAllProductCategoryInCheckout(Model model) {
		return navigationCategory(model,"checkout");
	}
	
	@RequestMapping(value="/productdetail", method=RequestMethod.GET)
	public String getAllProductCategoryInProductDetail(Model model) {
		return navigationCategory(model,"productdetail");
	}
	
}
