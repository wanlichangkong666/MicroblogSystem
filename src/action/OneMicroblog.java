package action;

import java.util.Map;

import vo.Microblog;
import vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.MicroblogDao;
import dao.impl.MicroblogDaoImpl;

public class OneMicroblog extends ActionSupport{
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private Microblog microblog;
	public String execute() throws Exception{
		Map session=ActionContext.getContext().getSession();
		session.put("mid", id);
		MicroblogDao mDao=new MicroblogDaoImpl();
		microblog=mDao.findById(id);
		return SUCCESS;
	}
	public Microblog getMicroblog() {
		return microblog;
	}
	public void setMicroblog(Microblog microblog) {
		this.microblog = microblog;
	}
}
