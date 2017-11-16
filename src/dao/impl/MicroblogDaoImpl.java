package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateSessionFactory;
import vo.Microblog;
import vo.User;
import dao.MicroblogDao;

public class MicroblogDaoImpl implements MicroblogDao {
	@Override
	public void add(Microblog u) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.save(u);
		ts.commit();
		session.close();
	}

	@Override
	public void delete(int id) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Microblog u=(Microblog)session.get(Microblog.class, id);
		session.delete(u);
		ts.commit();
		session.close();
	}

	@Override
	public void update(Microblog u) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.update(u);
		ts.commit();
		session.close();
	}

	@Override
	public Microblog findById(int id) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Microblog where id=?");
		query.setParameter(0, id);
		List<Microblog> list=(List<Microblog>)query.list();
		ts.commit();
		session.close();
		return list.get(0);
	}

	@Override
	public List<Microblog> findAll() {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Microblog order by time desc");
		List<Microblog> list=(List<Microblog>)query.list();
		ts.commit();
		session.close();
		return list;
	}

	@Override
	public List<Microblog> findByTheme(String theme) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Microblog where theme=? order by time desc");
		query.setParameter(0, theme);
		List<Microblog> list=(List<Microblog>)query.list();
		ts.commit();
		session.close();
		return list;
	}

	@Override
	public List<Microblog> findByUser(User user) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Microblog where user=? order by time desc");
		query.setParameter(0, user);
		List<Microblog> list=(List<Microblog>)query.list();
		ts.commit();
		session.close();
		return list;
	}
}
