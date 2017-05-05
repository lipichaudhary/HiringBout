package com.codingbout.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class UserProfile {
	
	@RequestMapping(value="/updateProfile", method=RequestMethod.GET)
	public String updateProfile(ModelMap model){
		return "editprofile";
	}
}
