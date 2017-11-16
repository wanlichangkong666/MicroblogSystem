package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateSessionFactory;
import vo.User;
import dao.UserDao;

public class UserDaoImpl implements UserDao{

	@Override
	public void add(User u) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.save(u);
		ts.commit();
		session.close();
	}

	@Override
	public void delete(String username) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		User u=(User)session.get(User.class, username);
		session.delete(u);
		ts.commit();
		session.close();
	}

	@Override
	public void update(User u) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.update(u);
		ts.commit();
		session.close();
	}

	@Override
	public User findByUsername(String username) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from User where username=?");
		query.setParameter(0, username);
		List<User> list=(List<User>)query.list();
		ts.commit();
		session.close();
		if (list.size()>=1)
			return list.get(0);
		else 
			return null;
	} 
	
	@Override
	public List<User> findAll() {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from User");
		List<User> list=(List<User>)query.list();
		ts.commit();
		session.close();
		return list;
	}

}
