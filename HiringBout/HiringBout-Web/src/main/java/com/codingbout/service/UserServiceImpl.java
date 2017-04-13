package com.codingbout.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingbout.bean.LoginBean;
import com.codingbout.dao.UserDAO;
import com.codingbout.dao.UserDAOImpl;
import com.codingbout.model.User;

@Service
public class UserServiceImpl implements UserService{
	
	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO){
		this.userDAO = userDAO;
	}
	
	public boolean doLogin(LoginBean loginBean){
		System.out.println("In Service class...checking login");
		return userDAO.doLogin(loginBean);
	}

	public void saveUser(User user) {
		System.out.println("In Service class...checking login");
		userDAO.saveUser(user);
	}
	
}
