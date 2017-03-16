package com.codingbout.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository("LoginDAO")
public class LoginDAOImpl implements LoginDAO{
	
	protected SessionFactory sessionFactory;
	
	public void setSessionFActory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	protected Session getSession(){
		return sessionFactory.openSession();
	}
	
	public boolean checkLogin(String userName, String userPassword){
		System.out.println("Checking password in CodingBout DB");
		Session session = sessionFactory.openSession();
		boolean userFound = false;
		String SQLQuery = " from Users as o where o.userName=? and o.userPassword=?";
		Query query = session.createQuery(SQLQuery);
		query.setParameter(0, userName);
		query.setParameter(1, userPassword);
		List list = query.list();
		
		if((list!=null) && (list.size()>0)){
			userFound=true;
		}
		
		session.close();
		return userFound;
		
	}
}
