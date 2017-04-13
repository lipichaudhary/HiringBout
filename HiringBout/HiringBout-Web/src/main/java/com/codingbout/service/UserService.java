package com.codingbout.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.codingbout.bean.LoginBean;
import com.codingbout.model.User;


public interface UserService {
	public boolean doLogin(LoginBean loginBean); //added
	public void saveUser(User user);
}
