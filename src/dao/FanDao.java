package dao;

import java.util.List;

import vo.Fan;
import vo.User;

public interface FanDao {
	 public void add(Fan f);
	 public void delete(String username);
	 public void delete(List<Fan> fans,String username);
	 public void update(Fan f);
	 public List<Fan> findByUsername(String username);
	 public List<Fan> findByFusername(String fusername);
	 public List<Fan> findAll();
	 public int have(String username,String fusername);

}
