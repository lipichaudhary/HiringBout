package com.codingbout.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.codingbout.bean.LoginBean;
import com.codingbout.model.User;

@Repository
public class UserDAOImpl implements UserDAO{
	
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	public boolean doLogin(LoginBean loginBean){
		System.out.println("Checking password in CodingBout DB");	
		Session session = sessionFactory.openSession();
		  boolean userFound = false;
		String SQLQuery = " from User as o where o.accusername=? and o.accpassword=?";
		Query query = session.createQuery(SQLQuery);
		query.setParameter(0, loginBean.getUsername());
		query.setParameter(1, loginBean.getPassword());
		List list = query.list();
		
		if((list!=null) && (list.size()>0)){
			userFound=true;
		}
		
		session.close();
		return userFound;		
	}

	public void saveUser(User user) {
		System.out.println("Saving user");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		if(user!=null){
			try{
				session.save(user);
				tx.commit();
				session.close();
			}
			catch(Exception e){
				tx.rollback();
				session.close();
				e.printStackTrace();
			}
		}
	}

}
