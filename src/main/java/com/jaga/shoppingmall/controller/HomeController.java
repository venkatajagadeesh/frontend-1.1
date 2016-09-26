package com.jaga.shoppingmall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jaga.shoppingmall.dao.CategoryDAO;
import com.jaga.shoppingmall.dao.ProductDAO;

@Controller
public class HomeController {
	@Autowired
	ProductDAO productDAO;
	@Autowired 
	CategoryDAO categoryDAO;
@RequestMapping("/")
public String homepage(Model m){
	
	//m.addAttribute("product",new Product());
	m.addAttribute("categoryList", categoryDAO.list());
	m.addAttribute("productList",productDAO.list());
	return "Home";
}
@RequestMapping(value ="ShowProduct/{id}" )
public String ShowProduct(@PathVariable("id") int id,RedirectAttributes attributes,Model m) {
m.addAttribute("Clickedshowproduct", "true");
	m.addAttribute("IndividualProduct", productDAO.getproduct(id));
	return "ShowProduct";
}
@RequestMapping(value="/Login")
public String loginpage(){
	ModelAndView mv= new ModelAndView("/Login");
	mv.addObject("UserClickedlogin", "true");
	return "Login";
}
}