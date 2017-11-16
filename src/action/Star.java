package action;

import java.util.List;

import vo.Microblog;

import com.opensymphony.xwork2.ActionSupport;

import dao.MicroblogDao;
import dao.impl.MicroblogDaoImpl;

public class Star extends ActionSupport {
	private List<Microblog> list;
	public List<Microblog> getList() {
		return list;
	}
	public void setList(List<Microblog> list) {
		this.list = list;
	}
	public String execute() throws Exception {
		MicroblogDao mDao=new MicroblogDaoImpl();
		list=mDao.findByTheme("明星");
		return SUCCESS;
	}
}
