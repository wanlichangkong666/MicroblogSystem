package dao;

import java.util.List;

import vo.Comment;

public interface CommentDao {
	 public void add(Comment c);
	 public void delete(int mid);
	 public void update(Comment c);
	 public List<Comment> findById(int id);
	 public List<Comment> findAll();
}
