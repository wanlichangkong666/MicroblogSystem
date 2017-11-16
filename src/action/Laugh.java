package action;

import java.util.List;

import vo.Microblog;

import com.opensymphony.xwork2.ActionSupport;

import dao.MicroblogDao;
import dao.impl.MicroblogDaoImpl;

public class Laugh extends ActionSupport {
	private List<Microblog> list;
	public List<Microblog> getList() {
		return list;
	}
	public void setList(List<Microblog> list) {
		this.list = list;
	}
	public String execute() throws Exception {
		MicroblogDao mDao=new MicroblogDaoImpl();
		list=mDao.findByTheme("搞笑");
		return SUCCESS;
	}
}
