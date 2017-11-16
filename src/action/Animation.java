package action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import vo.Microblog;

import com.opensymphony.xwork2.ActionSupport;

import dao.MicroblogDao;
import dao.impl.MicroblogDaoImpl;

public class Animation extends ActionSupport {
	private List<Microblog> list;
	public List<Microblog> getList() {
		return list;
	}
	public void setList(List<Microblog> list) {
		this.list = list;
	}
	public String execute() throws Exception {
		MicroblogDao mDao=new MicroblogDaoImpl();
		list=mDao.findByTheme("动漫");
		return SUCCESS;
	}
}
