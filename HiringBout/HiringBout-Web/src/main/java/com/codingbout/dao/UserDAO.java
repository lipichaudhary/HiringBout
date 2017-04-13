package com.codingbout.dao;

import org.springframework.stereotype.Component;

import com.codingbout.bean.LoginBean;
import com.codingbout.model.User;


public interface UserDAO {
	public void saveUser(User user);
	public boolean doLogin(LoginBean loginBean);
}
