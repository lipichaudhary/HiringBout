package com.codingbout.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.codingbout.Validation.UserValidation;
import com.codingbout.model.User;
import com.codingbout.service.UserService;
import com.codingbout.service.UserServiceImpl;

@Controller
public class RegisterController {

	
	@Autowired(required=true) 
	@Qualifier(value="userService")
	private UserService userService;
	
	public void setUserService(UserService userService){
		this.userService = userService;
	}	
	
	@RequestMapping(value="/registrationform", method=RequestMethod.GET)
	public String showRegistrationForm(ModelMap model){
		model.put("userData", new User());
		return "Register";
	}
	
	@RequestMapping(value="/registrationsuccess", method=RequestMethod.POST)
	public String saveUser(ModelMap model, @ModelAttribute("userData") User user, BindingResult br, HttpSession session){
		UserValidation userValidation = new UserValidation();
		userValidation.validate(userValidation, br);
		
		if(br.hasErrors()){
			return "register";
		}
		else{
			userService.saveUser(user);
			session.setAttribute("user", user);
			System.out.println("Posting Form");
			return "Success";
		}
	}
}
