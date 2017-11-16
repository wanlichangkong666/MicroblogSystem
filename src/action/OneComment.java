package action;

import java.util.Map;

import vo.Microblog;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.MicroblogDao;
import dao.impl.MicroblogDaoImpl;

public class OneComment extends ActionSupport{
	private int id;
	private Microblog microblog;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Microblog getMicroblog() {
		return microblog;
	}
	public void setMicroblog(Microblog microblog) {
		this.microblog = microblog;
	}
	public String excute() throws Exception{
		Map session=ActionContext.getContext().getSession();
		session.put("mid", id);
		MicroblogDao mDao=new MicroblogDaoImpl();
		microblog=mDao.findById(id);
		return SUCCESS;
	}
}
