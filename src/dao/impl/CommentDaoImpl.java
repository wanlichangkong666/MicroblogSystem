package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateSessionFactory;
import vo.Comment;
import dao.CommentDao;

public class CommentDaoImpl implements CommentDao {
	@Override
	public void add(Comment c) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.save(c);
		ts.commit();
		session.close();
	}

	@Override
	public void delete(int mid) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.createQuery("delete from vo.Comment as c where c.microblog = "+mid+"");
		ts.commit();
		session.close();
	}

	@Override
	public void update(Comment c) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		session.update(c);
		ts.commit();
		session.close();
	}

	@Override
	public List<Comment> findById(int mid) {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from vo.Comment where microblog = "+mid+"");
		List<Comment> list=(List<Comment>)query.list();
		ts.commit();
		session.close();
		return list;
	}

	@Override
	public List<Comment> findAll() {
		Session session=HibernateSessionFactory.getSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Comment");
		List<Comment> list=(List<Comment>)query.list();
		ts.commit();
		session.close();
		return list;
	}
}
