package action;

import java.util.List;
import java.util.Map;

import vo.Microblog;
import vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.MicroblogDao;
import dao.impl.MicroblogDaoImpl;

public class MyMicroblog extends ActionSupport {
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
		list=mDao.findByUser((User)session.get("user"));
		return SUCCESS;
	}
}
