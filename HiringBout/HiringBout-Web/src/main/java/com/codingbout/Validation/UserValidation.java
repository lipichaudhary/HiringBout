package com.codingbout.Validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.codingbout.model.User;

public class UserValidation implements Validator {

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return User.class.equals(arg0);
	}

	public void validate(Object arg0, Errors arg1) {
		// TODO Auto-generated method stub
		
	}
	
}
