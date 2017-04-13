package com.codingbout.controller;

import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.codingbout.Validation.UserValidation;
import com.codingbout.bean.LoginBean;
import com.codingbout.model.User;
/*import com.codingbout.service.UserService;*/
import com.codingbout.service.UserService;
import com.codingbout.service.UserServiceImpl;

@Controller
public class LoginController {
	
	@Autowired(required=true) 
	@Qualifier(value="userService")
	private UserService userService;
	
	public void setUserService(UserService userService){
		this.userService = userService;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String showLoginForm(ModelMap model){
			model.put("UserData", new User());
			return "login";
	}
	
	@RequestMapping(value="/home", method=RequestMethod.POST)
	public String doLogin(ModelMap model, @ModelAttribute(value="logindata") LoginBean logindata, BindingResult br, HttpSession session){
		if(logindata.getUsername()!=null && logindata.getPassword()!=null){
			boolean userexist = userService.doLogin(logindata);
			if(userexist==true){
				return "home";
			}
			else{
				return "login";
			}
		}else{
			return "login";
		}
	}

}
