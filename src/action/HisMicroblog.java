package action;

import java.util.List;
import java.util.Map;

import vo.Microblog;
import vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.MicroblogDao;
import dao.UserDao;
import dao.impl.MicroblogDaoImpl;
import dao.impl.UserDaoImpl;

public class HisMicroblog extends ActionSupport {
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	private List<Microblog> list;

	public List<Microblog> getList() {
		return list;
	}

	public void setList(List<Microblog> list) {
		this.list = list;
	}

	public String execute() throws Exception{
		Map session=ActionContext.getContext().getSession();
		MicroblogDao mDao=new MicroblogDaoImpl();
		UserDao uDao=new UserDaoImpl();
		User u=uDao.findByUsername(user.getUsername());
		session.put("hisname", user.getUsername());
		list=mDao.findByUser(u);
		return SUCCESS;
	}
}
