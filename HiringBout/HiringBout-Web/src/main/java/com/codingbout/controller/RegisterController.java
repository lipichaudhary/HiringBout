package com.codingbout.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
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
/*@RequestMapping(value="/Register")*/
public class RegisterController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/RegistrationForm", method=RequestMethod.GET)
	public String showRegistrationForm(ModelMap model){
		model.put("userData", new User());
		return "Register";
	}
	
	/*@RequestMapping(value="/form", method=RequestMethod.GET)
	public ModelAndView getLoginForm(){
		System.out.println("Entered Register Controller Controller");
		ModelAndView model = new ModelAndView("Register");
		return model;
	}*/

	@RequestMapping(value="/RegistrationSuccess", method=RequestMethod.POST)
	public String saveUser(ModelMap model, @ModelAttribute("userData") @Valid User user, BindingResult br, HttpSession session){
		UserValidation userValidation = new UserValidation();
		userValidation.validate(userValidation, br);
		
		if(br.hasErrors()){
			return "register";
		}
		else{
			userService.saveUser(user);
			session.setAttribute("user", user);
			return "Success";
		}
	}
}
