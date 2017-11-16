package dao;

import java.util.List;

import vo.User;


public interface UserDao {
	 public void add(User u);
	 public void delete(String username);
	 public void update(User u);
	 public User findByUsername(String username);
	 public List<User> findAll();
}
