package dao;

import java.util.List;




import vo.Microblog;
import vo.User;

public interface MicroblogDao {
	 public void add(Microblog m);
	 public void delete(int id);
	 public void update(Microblog m);
	 public Microblog findById(int id);
	 public List<Microblog> findByTheme(String theme);
	 public List<Microblog> findByUser(User user);
	 public List<Microblog> findAll();
}
