package com.jaga.shoppingmall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jaga.shoppingmall.dao.UserDetailsDAO;
import com.jaga.shoppingmall.model.UserDetails;

@Controller
public class UserController {

	// when the user clicked login
	// based on the credentials, I want to find whether he is admin or not
	// if he is admin, I want to navigate to adminHome page
	// if he is user, I want to navigate to home page
	// If the user does not exist with this credentials. i want to give error
	// message

	@Autowired
	UserDetailsDAO userDetailsDAO;
	@Autowired
	UserDetails userDetails;

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value="id") String id,
			@RequestParam(value="password") String password, HttpSession session )
	{
		
		ModelAndView mv = new ModelAndView("home");
		@SuppressWarnings("unused")
		String msg;
		userDetails= userDetailsDAO.isValidUser(id, password);
		if(userDetails ==null)
		{
			msg="Invalid User...please try again";
		}
		else
		{
			if (userDetails.getRole().equals("ROLE_ADMIN")){
			mv= new ModelAndView("adminHome");	
			}else{
				
				session.setAttribute("welcomeMsg", userDetails.getName());
				session.setAttribute("userId", userDetails.getId());
			}
		}
		return mv;
		
	}

}

//logout also



