package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateSessionFactory;
import vo.Fan;
import vo.User;
import dao.FanDao;
import dao.UserDao;

public class FanDaoImpl implements FanDao {
	
	@Override
	public void add(Fan f) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.save(f);
		ts.commit();
		session.close();
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Fan f=(Fan)session.get(Fan.class,username);
		session.delete(f);
		ts.commit();
		session.close();
	}
	
	@Override
	public void delete(List<Fan> fans,String username) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		for(Fan f:fans){
			if(f.getUserByFusername().getUsername().equals(username)){
				session.delete(f);
				break;
			}
			else
				continue;
		}
		ts.commit();
		session.close();
	}

	@Override
	public void update(Fan f) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.update(f);
		ts.commit();
		session.close();
	}
	
	@Override
	public List<Fan> findByUsername(String username) {
		// TODO Auto-generated method stub
		UserDao uDao=new UserDaoImpl();
		User user=uDao.findByUsername(username);
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Fan where userByUsername=?");
		query.setParameter(0, user);
		List<Fan> list=(List<Fan>)query.list();
		ts.commit();
		session.close();
		return list;
	}

	@Override
	public List<Fan> findAll() {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Fan");
		List<Fan> list=(List<Fan>)query.list();
		ts.commit();
		session.close();
		return list;
	}
	

	@Override
	public List<Fan> findByFusername(String fusername) {
		UserDao uDao=new UserDaoImpl();
		User user=uDao.findByUsername(fusername);
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Fan where userByFusername=?");
		query.setParameter(0, user);
		List<Fan> list=(List<Fan>)query.list();
		ts.commit();
		session.close();
		return list;
	}




	@Override
	public int have(String fusername, String username) {
		UserDao uDao=new UserDaoImpl();
		User fuser=uDao.findByUsername(fusername);
		User user=uDao.findByUsername(username);
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Fan where userByFusername=? and userByUsername=?");
		query.setParameter(0, fuser);
		query.setParameter(1, user);
		List<Fan> list=(List<Fan>)query.list();
		ts.commit();
		session.close();
		return list.size();
	}

}
